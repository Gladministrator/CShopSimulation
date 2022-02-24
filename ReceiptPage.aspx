<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="ReceiptPage.aspx.cs" Inherits="FinalProject.ReceiptPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="receipt-container">
        <h2>Receipt</h2>
        <h3>Food Shop</h3>
        <h4>Order Details</h4>
        <asp:Panel ID="ReceiptPanel" runat="server" CssClass="receipt-ordered-container">
        </asp:Panel>
    </div>

</asp:Content>
