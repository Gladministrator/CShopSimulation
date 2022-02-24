<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <h2>Please login to your account to continue</h2>
        <div class="text-container">
            <asp:Label ID="UsernameLabel" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="UsernameText" runat="server"></asp:TextBox>
        </div>
        <div class="text-container">
            <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="PasswordText" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="center-container lg-font">
            <asp:LinkButton ID="NewProfileLink" runat="server" OnClick="NewProfileLink_Click">Create A New Account</asp:LinkButton>
        </div>
        <asp:Label ID="ValidationLabel" runat="server" Text="Label" Visible="false" CssClass="invalid-label">Invalid Username or Password</asp:Label>
        <div class="center-container">
            <asp:Button ID="Loginbtn" runat="server" Text="Login" OnClick="Loginbtn_Click" CssClass="button-style" />
            <asp:Button ID="Clearbtn" runat="server" Text="Clear" OnClick="Clearbtn_Click1" CssClass="button-style"  />
        </div>
    </div>
</asp:Content>
