using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using LMSBackOfficeDAL;
using LMSBackofficeDAL;
using ServiceStack;
using System.Xml;
using System.Text.RegularExpressions;
using Tesseract;
using System.Reflection;
//using DocumentFormat.OpenXml.Wordprocessing;

namespace LMSBackOfficeWebApplication
{
    public class KYCDocumentModel
    {
        public string Document_ID { get; set; }
        public string Member_ID { get; set; }
        public string Document_NICPath { get; set; }
        public DateTime? Document_NICExpiryDate { get; set; }
        public string Document_PassportPath { get; set; }
        public string Document_PassportName { get; set; }
        public DateTime? Document_PassportExpiryDate { get; set; }
        public short? Is_Active { get; set; }
        public DateTime? Created_Date { get; set; }
        public string Created_By { get; set; }
        public DateTime? Updated_Date { get; set; }
        public string Updated_By { get; set; }
    }

    public partial class KYC : System.Web.UI.Page
    {
        DataTable dtBonusTypes = new DataTable();
        private LMSBackOfficeDAL.Model.MemberInfo currentUser;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    // Session has expired, redirect to login page
                    Response.Redirect("~/Login.aspx");
                }

                var user = Session["Username"].ToString();
                currentUser = Members_DataAccess.GetMemberInfo(user);

                GetCountries();

                /*gvwBonusType.DataSource = null;*/
                ShowBonusTypes();

                countries.SelectedValue = currentUser.CountryId;
                txtUsername.Text = currentUser.Email;
            }

        }
        public void GetCountries()
        {
            try
            {
                List<Countries_DataAccess.Country> allCountries = Countries_DataAccess.GetAllCountries();

                // Populate select element with countries
                foreach (Countries_DataAccess.Country country in allCountries)
                {
                    ListItem item = new ListItem(country.CountryName, country.CountryID);
                    countries.Items.Add(item);
                }
            }
            catch (Exception ex)
            {
                WriteLog.LogError(ex);
            }
        }

        public static string ExtractPassportData(string imagePath)
        {
            // Initialize Tesseract engine
            using (var engine = new TesseractEngine(@"./tessdata", "eng", EngineMode.Default))
            {
                // Load image
                using (var img = Pix.LoadFromFile(imagePath))
                {
                    // Set page segmentation mode to treat the image as a single uniform block of text
                    using (var page = engine.Process(img, PageSegMode.SingleBlock))
                    {
                        // Get text from the image
                        string text = page.GetText();

                        // Extract fields using regular expressions
                        string givenName = ExtractField(text, "Given Name(s)?[:\\s]+([A-Za-z]+)");
                        string surname = ExtractField(text, "Surname[:\\s]+([A-Za-z]+)");
                        string expiryDate = ExtractField(text, "Expiry Date[:\\s]+(\\d{2}/\\d{2}/\\d{4})");


                        return givenName +
                           surname +
                            expiryDate;
                        
                    }
                }
            }
        }

        static string ExtractField(string text, string pattern)
        {
            Match match = Regex.Match(text, pattern);
            if (match.Success)
            {
                return match.Groups[1].Value;
            }
            else
            {
                return "N/A";
            }
        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    string path = Server.MapPath("~/Content//images//kyc/") + filename;
                    FileUploadControl.SaveAs(path);
                    StatusLabel.Text = "Upload status: File uploaded!";
                    string extractText = this.ExtractTextFromImage(path);
            
                    StatusLabel.Text = extractText.Replace(Environment.NewLine, "<br />");


                    var user = Session["Username"].ToString();
                    currentUser = Members_DataAccess.GetMemberInfo(user);

                    string fullName = currentUser.MemberFullName;
                    string[] nameParts = fullName.Split(' ');
                    string firstName = nameParts[0];
                    string lastName = nameParts[nameParts.Length - 1];
                    string param1 = firstName;
                    string param2 = lastName;

                    DateTime? maxDate;
                    bool param1Present, param2Present;
                    
                    if(FindMaxDateAndParams(extractText, param1, param2, out maxDate, out param1Present, out param2Present))
                    {
                        StatusLabel.Text = "KYC Verified";

                        KYCDocumentModel obj = new KYCDocumentModel();
                        obj.Member_ID = currentUser.Id;
                        obj.Document_NICPath=obj.Document_PassportPath = path;
                        obj.Document_NICExpiryDate=obj.Document_PassportExpiryDate = maxDate;
                        obj.Document_PassportName = "";
                        obj.Is_Active = 1;
                        obj.Created_Date = System.DateTime.Now.Date;

                        AddKYCDocument(obj);




                    }
                    else
                    {
                        StatusLabel.Text = "KYC Failed,Please try again";
                    }



                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occurred: " + ex.Message;
                }
            }
            else
            {
                StatusLabel.Text = "Upload status: Please select a file to upload.";
            }
        }
        public static bool FindMaxDateAndParams(string text, string param1, string param2, out DateTime? maxDate, out bool param1Present, out bool param2Present)
        {
            List<DateTime> dates = new List<DateTime>();
            Regex dateRegex = new Regex(@"\b\d{2}\s(?:JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)\s\d{4}\b");

            try
            {
                foreach (Match match in dateRegex.Matches(text))
                {
                    DateTime date;
                    if (DateTime.TryParseExact(match.Value, "dd MMM yyyy", System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out date))
                    {
                        dates.Add(date);
                    }
                }

                maxDate = dates.Count > 0 ? dates.Max() : (DateTime?)null;
                param1Present = text.Contains(param1);
                param2Present = text.Contains(param2);

                return (maxDate > System.DateTime.Now && param1Present || param2Present);
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Console.WriteLine("Error occurred: " + ex.Message);
                maxDate = null;
                param1Present = false;
                param2Present = false;
                return false;
            }
        }

        private string ExtractTextFromImageOld(string filePath)
        {
            string path = Page.Server.MapPath("~/") + Path.DirectorySeparatorChar + "tessdata";
            string tessDataPath = Server.MapPath("~/tessdata");
            using (Tesseract.TesseractEngine engine = new Tesseract.TesseractEngine(tessDataPath, "eng", Tesseract.EngineMode.Default))
            {
                using (Tesseract.Pix pix = Tesseract.Pix.LoadFromFile(filePath))
                {
                    using (Tesseract.Page page = engine.Process(pix))
                    {
                        return page.GetText();
                        //return ExtractNamesFromPassport(page.GetText().ToString());
                    }
                }
            }
        }

        private string ExtractTextFromImage(string filePath)
        {
            string tessDataPath = Server.MapPath("~/tessdata");

            try
            {
                using (Tesseract.TesseractEngine engine = new Tesseract.TesseractEngine(tessDataPath, "eng", Tesseract.EngineMode.Default))
                {
                    using (Tesseract.Pix pix = Tesseract.Pix.LoadFromFile(filePath))
                    {
                        using (Tesseract.Page page = engine.Process(pix))
                        {
                            if (page != null)
                            {
                                string text = page.GetText();
                                // Debug: Print OCR output
                                Console.WriteLine("OCR Output: " + text);
                                return text;
                            }
                            else
                            {
                                Console.WriteLine("Error: OCR failed to recognize text.");
                                return "";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Error handling: Print and handle exceptions
                Console.WriteLine("Error: " + ex.Message);
                return "";
            }
        }
        private string ExtractTextFromImagewithHeadings(string filePath)
        {
            string tessDataPath = Server.MapPath("~/tessdata");

            try
            {
                using (Tesseract.TesseractEngine engine = new Tesseract.TesseractEngine(tessDataPath, "eng", Tesseract.EngineMode.Default))
                {
                    using (Tesseract.Pix pix = Tesseract.Pix.LoadFromFile(filePath))
                    {
                        using (Tesseract.Page page = engine.Process(pix))
                        {
                            if (page != null)
                            {
                                StringBuilder result = new StringBuilder();

                                // Get the blocks of text recognized by Tesseract
                                using (Tesseract.ResultIterator iterator = page.GetIterator())
                                {
                                    iterator.Begin();
                                    do
                                    {
                                        // Get the text and the bounding box of each block
                                        string blockText = iterator.GetText(PageIteratorLevel.Block);
                                        Tesseract.Rect blockRect;
                                        iterator.TryGetBoundingBox(PageIteratorLevel.Block, out blockRect);

                                        // Append the block text to the result, along with the bounding box coordinates
                                        result.AppendLine($"Bounding Box: {blockRect.X1},{blockRect.Y1}-{blockRect.X2},{blockRect.Y2}");
                                        result.AppendLine(blockText);
                                        result.AppendLine();
                                    } while (iterator.Next(PageIteratorLevel.Block));
                                }

                                // Debug: Print OCR output
                                Console.WriteLine("OCR Output: " + result.ToString());
                                return result.ToString();
                            }
                            else
                            {
                                Console.WriteLine("Error: OCR failed to recognize text.");
                                return "";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Error handling: Print and handle exceptions
                Console.WriteLine("Error: " + ex.Message);
                return "";
            }
        }
        private string ExtractNamesFromPassport(string text)
        {
            // Initialize variables to store extracted names
            string givenNames = "";
            string surname = "";

            // Split the OCR output into lines
            string[] lines = text.Split(new[] { '\r', '\n' }, StringSplitOptions.RemoveEmptyEntries);

            // Search for patterns indicating the presence of given names and surname
            foreach (string line in lines)
            {
                // Check if the line contains common keywords related to names
                if (line.Contains("Given Names") || line.Contains("Given Name") || line.Contains("Given Name(s)") ||
                    line.Contains("Surname") || line.Contains("SURNAME"))
                {
                    // Extract given names and surname from the current line
                    ExtractNamesFromLine(line, ref givenNames, ref surname);
                }
            }

            // Return the extracted names
            return givenNames.Trim()+ surname.Trim();
        }

        private void ExtractNamesFromLine(string line, ref string givenNames, ref string surname)
        {
            // Split the line into words
            string[] words = line.Split(new[] { ' ', ':' }, StringSplitOptions.RemoveEmptyEntries);

            // Initialize variables to track the current parsing state
            bool parsingGivenNames = false;
            bool parsingSurname = false;

            // Iterate through the words to extract given names and surname
            foreach (string word in words)
            {
                // Check if the word indicates the start of given names or surname
                if (word.Contains("Given") && (word.Contains("Name") || word.Contains("Names")))
                {
                    parsingGivenNames = true;
                    parsingSurname = false;
                }
                else if (word.Contains("Surname"))
                {
                    parsingSurname = true;
                    parsingGivenNames = false;
                }
                else if (parsingGivenNames)
                {
                    // Append the word to the given names
                    givenNames += word + " ";
                }
                else if (parsingSurname)
                {
                    // Append the word to the surname
                    surname += word + " ";
                }
            }
        }


        public void ShowBonusTypes()
        {
            dtBonusTypes = LMSBackOfficeDAL.Setup_DataAccess.GetAllBonusTypes();

            
            if (dtBonusTypes.Rows.Count > 0)
            {
                gvwBonusType.DataSource = dtBonusTypes;
                gvwBonusType.DataBind();
            }

            string strResponse = Login_DataAccess.GetVisitorInfo();
            Label lblVisitorResponse = new Label();
            lblVisitorResponse.Text = "";

            if (strResponse == "Success")
            {
                lblVisitorResponse.Text = "Visitor Response has been Successfully Saved";
            }
            else
            {
                lblVisitorResponse.Text = "Error Occurred while Saving the Visitor Response";

            }

            //LMSBackofficeDAL.UtilMethods.SendEmail("Ahad Zubair", "ahadzubair@gmail.com", "0501271NNNN");

        }


        public static string AddKYCDocument(KYCDocumentModel model)
        {
            try
            {
                KYC_DataAccess.AddKYCDocument(
                    new Guid(),
                    new Guid(model.Member_ID),
                    model.Document_NICPath,
                    model.Document_NICExpiryDate,
                    model.Document_PassportPath,
                    model.Document_PassportName,
                    model.Document_PassportExpiryDate,
                    model.Is_Active,
                    model.Created_Date,
                    model.Created_By,
                    model.Updated_Date,
                    model.Updated_By);

                return "Success";
            }
            catch (Exception ex)
            {
                // Handle exception
                WriteLog.LogError(ex);
                return "fail";
            }
        }

    }
}
