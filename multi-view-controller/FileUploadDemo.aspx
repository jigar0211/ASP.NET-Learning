﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadDemo.aspx.cs" Inherits="multi_view_controller.FileUploadDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>File Upload Example</h1>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />
            <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
