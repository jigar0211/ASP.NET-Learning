<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="multi_view_controller.StudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 20px;">
            <h1>Student Details Form</h1>

            <!-- MultiView Control -->
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <!-- View 1: Personal Info -->
                <asp:View ID="View1" runat="server">
                    <h2>Student Personal Information</h2>
                    <asp:Label Text="Name:" AssociatedControlID="txtName" runat="server"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
                    <asp:Label Text="Gender:" AssociatedControlID="ddlGender" runat="server"></asp:Label>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="Select Gender" Value="" />
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                        <asp:ListItem Text="Other" Value="Other" />
                    </asp:DropDownList><br /><br />
                    <asp:Label Text="Address:" AssociatedControlID="txtAddress" runat="server"></asp:Label>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox><br /><br />
                    <asp:Label Text="Degree:" AssociatedControlID="txtDegree" runat="server"></asp:Label>
                    <asp:TextBox ID="txtDegree" runat="server"></asp:TextBox><br /><br />
                    <asp:Button ID="btnNext1" Text="Next" OnClick="btnNext1_Click" runat="server" />
                </asp:View>

                <!-- View 2: Contact Info -->
                <asp:View ID="View2" runat="server">
                    <h2>Student Contact Information</h2>
                    <asp:Label Text="Email:" AssociatedControlID="txtEmail" runat="server"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
                    <asp:Label Text="Contact No:" AssociatedControlID="txtContact" runat="server"></asp:Label>
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><br /><br />
                    <asp:Button ID="btnPrevious1" Text="Previous" OnClick="btnPrevious1_Click" runat="server" />
                    <asp:Button ID="btnNext2" Text="Next" OnClick="btnNext2_Click" runat="server" />
                </asp:View>

                <!-- View 3: Summary -->
                <asp:View ID="View3" runat="server">
                    <h2>Student Summary</h2>
                    <asp:Label ID="lblSummary" runat="server" Text="" />
                    <br /><br />
                    <asp:Button ID="btnPrevious2" Text="Previous" OnClick="btnPrevious2_Click" runat="server" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
