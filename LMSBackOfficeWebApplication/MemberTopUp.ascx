<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberTopUp.ascx.cs"  Inherits="LMSBackOfficeWebApplication.MemberTopUp" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
   <%-- <Triggers>        
        <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />    
    </Triggers>   --%> 
    <ContentTemplate>        
       <div class="modal fade modal-animate anim-blur" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h1 class="modal-title font-bold fs-4" id="exampleModalLabel">Enter Amount to Add in USD</h1>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">
                 <p>Enter amount you want to add to your credit wallet and choose a payment method.</p>
                 <%--<form action="/" method="post">--%>
                     <label class="mb-2">
                
                 Top Up Amount</label>
                     <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control w-100" Width="100%"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtAmount" ForeColor="Red">Please enter amount or select amount</asp:RequiredFieldValidator>
                 <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                 <%--<input type="text" name="name" id="txtAmount" runat="server" value="" class="form-control w-100" placeholder="Enter amount or select from below"
                         style="max-width: 100%;" />--%>
                     <div class="d-flex mt-3 justify-content-between gap-2">
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="99">+ 99</a>
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="500">+ 500</a>
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="1000">+ 1000</a>
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="3000">+ 3000</a>
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="5000">+ 5000</a>
                         <a class="btn btn-light-primary text-nowrap topupValue" data-value="0">Clear</a>
                     </div>
                 <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                 <%--</form>--%>
             </div>
             <div class="modal-footer">
                 <button type="button" ID="Button1" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                 <%--<asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-danger"  />--%>
                 <button type="button" class="btn btn-primary"
                     id="btnSubmit" runat="server" onserverclick="TotpUp_Click">Top Up</button>
                 <%--<asp:Button ID="TotpUp" runat="server" Text="Top Up" CssClass="btn btn-primary" OnClick="TotpUp_Click" />--%>
             </div>
         </div>
     </div>
 </div>
    </ContentTemplate>
</asp:UpdatePanel>
   <!-- Modal -->

<script type="text/javascript">
    $(document).ready(function () {
        $(".topupValue").click(function () {
            debugger;
            var value = $(this).attr('data-value');
            var txtFld = document.getElementById("<%=txtAmount.ClientID%>");
            txtFld.value = value;
        });
       

    });
</script>
  

