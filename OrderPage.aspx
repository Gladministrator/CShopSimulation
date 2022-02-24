<%@ Page Title="" Language="C#" MasterPageFile="~/Online.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="FinalProject.OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="column-container">
        <h2 class="order-title">Order Menu</h2>
        <div class="order-selections-container">
            <div class="order-item">
                <div>
                    <span>Vegetables</span>
                    <span>Quantity</span>
                </div>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="CarrotsLabel" runat="server" Text="Carrots"></asp:Label>
                    <asp:DropDownList ID="Carrotsddl" runat="server" OnSelectedIndexChanged="VegMenu_SelectedChanged" AutoPostBack="true">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="2.00">1lb ($2.00)</asp:ListItem>
                        <asp:ListItem Value="5.00">3lb ($5.00)</asp:ListItem>
                        <asp:ListItem Value="7.00">5lb ($7.00)</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:Label ID="TomatoesLabel" runat="server" Text="Tomatoes"></asp:Label>
                    <asp:DropDownList ID="Tomatoesddl" runat="server" OnSelectedIndexChanged="VegMenu_SelectedChanged" AutoPostBack="true">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="3.00">1lb ($3.00)</asp:ListItem>
                        <asp:ListItem Value="5.00">2lb ($5.00)</asp:ListItem>
                        <asp:ListItem Value="12.00">5lb ($12.00)</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Label ID="LettuceLabel" runat="server" Text="Lettuce"></asp:Label>
                    <asp:DropDownList ID="Lettuceddl" runat="server" OnSelectedIndexChanged="VegMenu_SelectedChanged" AutoPostBack="true">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1.50">1 Head ($1.50)</asp:ListItem>
                        <asp:ListItem Value="2.25">2 Heads ($2.25)</asp:ListItem>
                        <asp:ListItem Value="3.50">3 Heads ($3.50)</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <div>
                    <asp:Label ID="VegetablesTotalLabel" runat="server" Text="Vegetables Cost:"></asp:Label>
                    <asp:TextBox ID="VegetablesTotalText" runat="server" ReadOnly="true" Width="50px">$0.00</asp:TextBox>
                </div>
            </div>
            <div class="order-item">
                <asp:Label ID="MeatLabel" runat="server" Text="Meat Products"></asp:Label>
                <asp:Panel ID="MeatPanel" runat="server" CssClass="order-item-checkbox">
                    <asp:CheckBox ID="ChickenCheck" runat="server" Text="Chicken ($5.00)" OnCheckedChanged="MeatCheck_CheckedChanged" AutoPostBack="true" />
                    <asp:CheckBox ID="BeefCheck" runat="server" Text="Beef ($5.00)" OnCheckedChanged="MeatCheck_CheckedChanged" AutoPostBack="true" />
                    <asp:CheckBox ID="LambCheck" runat="server" Text="Lamb ($5.00)" OnCheckedChanged="MeatCheck_CheckedChanged" AutoPostBack="true" />
                </asp:Panel>
                <div>
                    <asp:Label ID="MeatTotalLabel" runat="server" Text="Meat Cost:"></asp:Label>
                    <asp:TextBox ID="MeatTotalText" runat="server" ReadOnly="true" Width="50px">$0.00</asp:TextBox>
                </div>
            </div>
            <asp:Panel ID="DairyPanel" runat="server" CssClass="order-item">
                <asp:Label ID="DairyLabel" runat="server" Text="Dairy Products"></asp:Label>
                <asp:DropDownList ID="Dairyddl" runat="server" OnSelectedIndexChanged="Dairy_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                    <asp:ListItem Value="5.00">Cheddar ($5.00)</asp:ListItem>
                    <asp:ListItem Value="6.50">Gouda ($6.50)</asp:ListItem>
                    <asp:ListItem Value="4.50">Mozzarella ($4.50)</asp:ListItem>
                </asp:DropDownList>
                <div>
                    <asp:Label ID="DairyTotalLabel" runat="server" Text="Dairy Cost:"></asp:Label>
                    <asp:TextBox ID="DairyTotalText" runat="server" ReadOnly="true" Width="50px">$0.00</asp:TextBox>
                </div>
            </asp:Panel>
        </div>
        <div class="total-container">
            <asp:Label ID="TotalLabel" runat="server" Text="Total Cost"></asp:Label>
            <asp:TextBox ID="TotalText" runat="server" ReadOnly="true" Height="25px" Style="margin-top: 0px">$0.00</asp:TextBox>
            <asp:Button ID="Receiptbtn" runat="server" Text="Order and Show Receipt" OnClick="Receiptbtn_Click" Height="46px" CssClass="button-style" />
        </div>
    </asp:Panel>
</asp:Content>
