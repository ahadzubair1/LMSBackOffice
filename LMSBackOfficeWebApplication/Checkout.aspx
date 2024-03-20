<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Checkout.aspx.cs" Inherits="LMSBackOfficeWebApplication.Checkout" %>


<asp:Content ID="CheckoutContent" ContentPlaceHolderID="MainContent" runat="server">
    <style  type="text/css">
.txtWalletAddress{
    max-width:350px !important;
}
    </style>
 <div class="pc-container">
     <div class="pc-content">
      <div class="py-5 text-center">
        <h2>Checkout Form</h2>
       
      </div>

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Your cart</span>
            <span class="badge badge-secondary badge-pill">3</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Topup Amount</h6>
              </div>
              <span class="text-muted">
                  <asp:Label ID="lblAmount" runat="server" Text=""></asp:Label>
              </span>
            </li>


            <li class="list-group-item d-flex justify-content-between">
              <span>Total (USD)</span>
              <strong>
                  <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
              </strong>
            </li>
          </ul>

        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Billing Address</h4>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Member Code</label> 
                  <asp:TextBox ID="txtMemberCode" runat="server" CssClass="form-control" Enabled="False" ReadOnly="True"></asp:TextBox>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Member FullName</label>
                     <asp:TextBox ID="txtMemberFullName" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email </label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
             
            </div>
            <%--<div class="row">
              <div class="col-md-2 mb-3">
                <label for="currency">Currency</label>
                  <asp:TextBox ID="txtCurrency" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
              </div>
              <div class="col-md-9 mb-3">
                <label for="walletaddress">Company Address</label>
                  <asp:TextBox ID="txtWalletAddress" runat="server" CssClass="form-control txtWalletAddress" Width="99%" MaxLength="60" ReadOnly="True"></asp:TextBox>
              
              </div>
            </div>--%>
            <div class="row">
              <div class="col-md-4 mb-3">
                <label for="country">Patment Mode</label>
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-select d-block w-100">
                      <asp:ListItem Value="">Select Payment Mode</asp:ListItem>
                      <asp:ListItem Value="ETH">Ethereum (ERC20) - ETH</asp:ListItem>
                      <asp:ListItem Value="BTC">BitCoin - BTC</asp:ListItem>
                      <asp:ListItem Value="USD">ERC20 - USD</asp:ListItem>
                      <asp:ListItem Value="TRX">TRON - TRX</asp:ListItem>
                      <asp:ListItem Value="LTCT">LTCT</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1" Font-Size="9pt" ForeColor="#CC0000">Please Select Payment Method</asp:RequiredFieldValidator>
              </div>
              <div class="col-md-8 mb-3">
                <label for="state">Address</label>
              <asp:TextBox ID="txtWalletAddress" runat="server" CssClass="form-control txtWalletAddress" Width="99%" MaxLength="60"></asp:TextBox>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
            </div>

            <hr class="mb-4">
            <%--<button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>--%>
          <input type="image" src="https://www.coinpayments.net/images/pub/checkout-blue.png" id="CheckoutBtn" alt="Checkout" runat="server" onserverclick="CheckoutBtn_ServerClick"  CausesValidation="false">
            <%--<asp:ImageButton ID="CheckoutBtn" runat="server" ImageUrl="https://www.coinpayments.net/images/pub/checkout-blue.png" OnClick="CheckoutBtn_ServerClick" />--%>
            </div>
      </div>
         </div>
    </div>


</asp:Content>
