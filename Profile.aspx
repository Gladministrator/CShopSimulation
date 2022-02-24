<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FinalProject.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-container">
        <h1>Account Information</h1>
        <div>
            <asp:Label ID="UserIDLabel" runat="server" Text="User ID"></asp:Label>
            <asp:TextBox ID="UserIDText" runat="server"></asp:TextBox>
            <asp:Label ID="FirstNameLabel" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="FirstNameText" runat="server"></asp:TextBox>
            <asp:Label ID="LastNameLabel" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="LastNameText" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="StreetLabel" runat="server" Text="Street Address"></asp:Label>
            <asp:TextBox ID="StreetText" runat="server"></asp:TextBox>
            <asp:Label ID="CityLabel" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="CityText" runat="server"></asp:TextBox>
            <asp:Label ID="RegionLabel" runat="server" Text="Region"></asp:Label>
            <asp:TextBox ID="RegionText" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="PostalCodeLabel" runat="server" Text="Postal Code"></asp:Label>
            <asp:TextBox ID="PostalCodeText" runat="server"></asp:TextBox>
            <asp:Label ID="TelePhoneLabel" runat="server" Text="Telephone Number"></asp:Label>
            <asp:TextBox ID="TelePhoneText" runat="server"></asp:TextBox>
        </div>
        <asp:Panel ID="PasswordPanel" runat="server">
            <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="PasswordText" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="ConfirmPasswordText" runat="server" TextMode="Password"></asp:TextBox>
        </asp:Panel>
        <div class="profile-buttons">
            <asp:Button ID="SaveButton" runat="server" Text="Create" OnClick="SaveButton_Click" CssClass="button-style" />
            <asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" CssClass="button-style" />
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" CssClass="button-style" />
        </div>
    </div>
</asp:Content>
