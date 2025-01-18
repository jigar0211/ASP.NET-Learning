<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateDisplay.aspx.cs" Inherits="multi_view_controller.DateDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div style="text-align: center; margin-top: 50px;">
            <h1>Date Display</h1>
            <asp:Label ID="lblCurrentDay" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br /><br />
            <asp:Label ID="lblSelectedDate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
