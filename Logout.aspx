<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="FinalProject.Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="logout-container">
        <h1>You have successfully logged out of the application</h1>
        <asp:LinkButton ID="lnkReturn" runat="server" OnClick="lnkReturn_Click">Click Here to return to the Login Page</asp:LinkButton>
    </div>
</asp:Content>
