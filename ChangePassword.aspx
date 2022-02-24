<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FinalProject.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-container">
        <asp:Label ID="ChangePasswordLabel" runat="server" Text="New Password"></asp:Label>
        <asp:TextBox ID="ChangePasswordText" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="ConfirmChangePasswordLabel" runat="server" Text="Confirm New Password"></asp:Label>
        <asp:TextBox ID="ConfirmChangePasswordText" runat="server" TextMode="Password"></asp:TextBox>
        <div class="profile-buttons">
            <asp:Button ID="UpdatePassword" runat="server" Text="Update Password" OnClick="PasswordButton_Click" CssClass="button-style" />
            <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="PasswordButton_Click" CssClass="button-style" />
        </div>
    </div>
</asp:Content>
