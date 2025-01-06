<%@ Page Title="Simple Page" Language="C#" AutoEventWireup="true" MasterPageFile="Site1.Master" CodeBehind="Bootstrap-Nav.aspx.cs" Inherits="Bootstrap_integration.Bootstrap_Nav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Simple Page Title
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to the Simple Page</h1>
    <p>This page is using the master page layout.</p>

    <!-- Additional Content -->
    <asp:DropDownList ID="ddlExample" runat="server" CssClass="form-select">
        <asp:ListItem Text="Option 1" Value="1" />
        <asp:ListItem Text="Option 2" Value="2" />
    </asp:DropDownList>
</asp:Content>
