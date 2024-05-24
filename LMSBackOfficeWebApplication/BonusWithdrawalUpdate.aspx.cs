using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using ClosedXML.Excel;

namespace LMSBackOfficeWebApplication
{
    public partial class BonusWithdrawalUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            statusLabel.Text = "Bonus Withdrawal Status has been Successfully Updated in the Database";
            if (!IsPostBack)
            { 
                ExportToExcel(sender, e);
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            statusLabel.Text = "Bonus Withdrawal Status has been Successfully Updated in the Database";
            /*if (fileUpload.HasFile && IsExcelFile(fileUpload.FileName))
            {
                try
                {
                    // Save the uploaded Excel file to a temporary location
                    string tempFolderPath = Server.MapPath("~/Temp/");
                    if (!Directory.Exists(tempFolderPath))
                    {
                        Directory.CreateDirectory(tempFolderPath);
                    }

                    string excelFilePath = Path.Combine(tempFolderPath, Path.GetFileName(fileUpload.FileName));
                    fileUpload.SaveAs(excelFilePath);

                    // Read Excel file
                    DataTable excelData = ReadExcel(excelFilePath);

                    // Update status
                    //   UpdateStatus(excelData);

                    // Upload updated status to SQL Server
                    UploadUpdatedStatus(excelData);

                    // Delete the temporary file
                    File.Delete(excelFilePath);

                    Response.Write("Updated status uploaded successfully.");
                    statusLabel.Text = "Updated status uploaded successfully.";
                    statusLabel.Visible = true;
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            else
            {
                Response.Write("Please upload a valid Excel file.");
                statusLabel.Text = "Please upload a valid Excel file.";
                statusLabel.Visible = true;
            }*/
        }

        private bool IsExcelFile(string fileName)
        {
            return fileName.EndsWith(".xlsx", StringComparison.OrdinalIgnoreCase) ||
                   fileName.EndsWith(".xls", StringComparison.OrdinalIgnoreCase);
        }

        private DataTable ReadExcel(string filePath)
        {
            DataTable dt = new DataTable();

            using (OleDbConnection connection = new OleDbConnection($"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={filePath};Extended Properties='Excel 12.0 Xml;HDR=YES;'"))
            {
                connection.Open();
                OleDbCommand command = new OleDbCommand("SELECT * FROM [Withdrawal Status Update$]", connection);
                using (OleDbDataReader reader = command.ExecuteReader())
                {
                    dt.Load(reader);
                }
            }

            return dt;
        }

        private void UpdateStatus(DataTable dataTable)
        {
            // Update the status in the DataTable as per your requirements
            foreach (DataRow row in dataTable.Rows)
            {
                // Example: Update the Withdrawal_Status column to "Updated"
                row["Withdrawal_Status"] = "Updated";
            }
        }

        //private void UploadUpdatedStatus(DataTable dataTable)
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
        //        {
        //            bulkCopy.DestinationTableName = "Withdraw"; // Update to match your table name
        //            foreach (DataColumn column in dataTable.Columns)
        //            {
        //                bulkCopy.ColumnMappings.Add(column.ColumnName, column.ColumnName);
        //            }

        //            bulkCopy.WriteToServer(dataTable);
        //        }
        //    }
        //}

        private void UploadUpdatedStatus(DataTable dataTable)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                foreach (DataRow row in dataTable.Rows)
                {
                    string updateCommandText = @"
                UPDATE Withdraw 
                SET Withdrawal_Status = @Status 
                WHERE Withdraw_ID = @Withdraw_ID"; // Modify this SQL statement based on your table structure

                    SqlCommand command = new SqlCommand(updateCommandText, connection);

                    // Assuming you have columns named "Status" and "Withdraw_ID" in your DataTable and corresponding columns in the "Withdraw" table
                    command.Parameters.AddWithValue("@Status", row["Withdrawal_Status"]);
                    command.Parameters.AddWithValue("@Withdraw_ID", row["Withdraw_ID"]);

                    command.ExecuteNonQuery();
                }
            }
        }


        protected void ExportToExcel(object sender, EventArgs e)
        {
            try
            {
                string excelFilePath = "withdraw_data_export.xlsx"; // Path to save the Excel file
                string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;

                DataTable withdrawData = GetWithdrawDataFromDatabase(connectionString);

                ExportToExcel(withdrawData, excelFilePath);

                Response.Write("Data exported to Excel successfully.");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        private DataTable GetWithdrawDataFromDatabase(string connectionString)
        {
            DataTable dataTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM dbo.Withdraw";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        dataTable.Load(reader);
                    }
                }
            }

            return dataTable;
        }

        private void ExportToExcel(DataTable dataTable, string fileName)
        {
            // Get the path to the directory where the Excel file will be saved
            string directoryPath = Server.MapPath("~/App_Data/"); // You can change this to any directory within your web application

            // Combine the directory path and the file name to get the full file path
            string filePath = Path.Combine(directoryPath, fileName);

            // Create the Excel file
            using (var workbook = new XLWorkbook())
            {
                // Add a worksheet
                var worksheet = workbook.Worksheets.Add("Withdrawal Status Update");

                // Write column headers
                for (int i = 0; i < dataTable.Columns.Count; i++)
                {
                    worksheet.Cell(1, i + 1).Value = dataTable.Columns[i].ColumnName;
                }

                // Write data rows
                for (int row = 0; row < dataTable.Rows.Count; row++)
                {
                    for (int col = 0; col < dataTable.Columns.Count; col++)
                    {
                        worksheet.Cell(row + 2, col + 1).Value = dataTable.Rows[row][col].ToString();
                    }
                }

                // Save the workbook
                workbook.SaveAs(filePath);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Dashboard.aspx");
        }

        //private void ExportToExcel(DataTable dataTable, string fileName)
        //{
        //    // Create a new MemoryStream to store the Excel file
        //    using (var memoryStream = new MemoryStream())
        //    {
        //        // Create the Excel file
        //        using (var workbook = new XLWorkbook())
        //        {
        //            // Add a worksheet
        //            var worksheet = workbook.Worksheets.Add("Withdrawal Status Update");

        //            // Write column headers
        //            for (int i = 0; i < dataTable.Columns.Count; i++)
        //            {
        //                worksheet.Cell(1, i + 1).Value = dataTable.Columns[i].ColumnName;
        //            }

        //            // Write data rows
        //            for (int row = 0; row < dataTable.Rows.Count; row++)
        //            {
        //                for (int col = 0; col < dataTable.Columns.Count; col++)
        //                {
        //                    worksheet.Cell(row + 2, col + 1).Value = dataTable.Rows[row][col].ToString();
        //                }
        //            }

        //            // Save the workbook to the MemoryStream
        //            workbook.SaveAs(memoryStream);
        //        }

        //        // Prepare the response for downloading
        //        Response.Clear();
        //        Response.Buffer = true;
        //        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //        Response.AddHeader("content-disposition", $"attachment; filename={fileName}");
        //        Response.BinaryWrite(memoryStream.ToArray());
        //        Response.End();
        //    }
        //}



    }
}
