<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotator.aspx.cs" Inherits="multi_view_controller.AdRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Ad Rotator Example</h1>
            <asp:AdRotator 
                ID="AdRotator1" 
                runat="server" 
                AdvertisementFile="Ads.xml" 
                Width="300px" 
                Height="250px">
            </asp:AdRotator>
        </div>
    </form>
</body>
</html>
