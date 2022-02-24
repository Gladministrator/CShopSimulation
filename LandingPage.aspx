<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="FinalProject.LandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ProfileImageButton" runat="server" ImageUrl="~/Images/Profile.png" OnClick="ProfileImageButton_Click" AlternateText="Profile Image" CssClass="landing-image-link" />
    <asp:ImageButton ID="OrderImageButton" ImageUrl="~/Images/OrderFood.png" runat="server" OnClick="OrderImageButton_Click" AlternateText="Order Image" CssClass="landing-image-link"  />
</asp:Content>
