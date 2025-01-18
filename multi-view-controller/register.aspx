<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="multi_view_controller.register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Multi-View Registration and Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="RegisterView" runat="server">
                <h2>Register</h2>
                Username:
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="Username"
                    ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

                Branch:
                <asp:TextBox ID="Branch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBranch" runat="server" ControlToValidate="Branch"
                    ErrorMessage="Branch is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

                Semester:
                <asp:TextBox ID="Semester" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSemester" runat="server" ControlToValidate="Semester"
                    ErrorMessage="Semester is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexSemester" runat="server" ControlToValidate="Semester"
                    ValidationExpression="^[1-8]$" ErrorMessage="Semester must be between 1 and 8" ForeColor="Red"></asp:RegularExpressionValidator><br />

                Division:
                <asp:TextBox ID="Division" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDivision" runat="server" ControlToValidate="Division"
                    ErrorMessage="Division is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexDivision" runat="server" ControlToValidate="Division"
                    ValidationExpression="^[A-Z]{1}$" ErrorMessage="Division must be a single uppercase letter"
                    ForeColor="Red" Type="Integer"></asp:RegularExpressionValidator><br />
                AGE:
                <asp:TextBox ID="AgeTxt" runat="server"></asp:TextBox><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Between 18 to 50" ControlToValidate="AgeTxt" MaximumValue="50" MinimumValue="18"></asp:RangeValidator>
                <br />
                Password:
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                <br />

                Confirm Password:
                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPasswords" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator><br />

                <br />

                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Width="155px" />
                <br />
                <br />
                <asp:Button ID="btnGoToLogin" runat="server" Text="Go to Login" OnClick="btnGoToLogin_Click" />
            </asp:View>

            <asp:View ID="Login" runat="server">
                <h2>Login</h2>
                Username:
                <asp:TextBox ID="txtLoginUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginUsername" runat="server" ControlToValidate="txtLoginUsername"
                    ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

                Password:
                <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginPassword" runat="server" ControlToValidate="txtLoginPassword"
                    ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

                <br />

                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="154px" />
                <br />
                <br />
                <asp:Button ID="btnGoToRegister" runat="server" Text="Go to Register" OnClick="btnGoToRegister_Click" />
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
