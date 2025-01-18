<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="multi_view_controller.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 20px;">
            <h1>Registration Form</h1>
            <asp:ValidationSummary 
                ID="ValidationSummary1" 
                runat="server" 
                HeaderText="Please correct the following errors:" 
                ForeColor="Red" />
            <table style="margin: 0 auto;">
                <tr>
                    <td>
                        <asp:Label Text="Email:" AssociatedControlID="txtEmail" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvEmail" 
                            runat="server" 
                            ControlToValidate="txtEmail" 
                            ErrorMessage="Email is required." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator 
                            ID="revEmail" 
                            runat="server" 
                            ControlToValidate="txtEmail" 
                            ErrorMessage="Invalid email format." 
                            ForeColor="Red" 
                            ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="Password:" AssociatedControlID="txtPassword" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvPassword" 
                            runat="server" 
                            ControlToValidate="txtPassword" 
                            ErrorMessage="Password is required." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator 
                            ID="revPassword" 
                            runat="server" 
                            ControlToValidate="txtPassword" 
                            ErrorMessage="Password must be at least 6 characters long." 
                            ForeColor="Red" 
                            ValidationExpression=".{6,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="Confirm Password:" AssociatedControlID="txtConfirmPassword" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator 
                            ID="cvPassword" 
                            runat="server" 
                            ControlToValidate="txtConfirmPassword" 
                            ControlToCompare="txtPassword" 
                            ErrorMessage="Passwords do not match." 
                            ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="Age:" AssociatedControlID="txtAge" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvAge" 
                            runat="server" 
                            ControlToValidate="txtAge" 
                            ErrorMessage="Age is required." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator 
                            ID="rvAge" 
                            runat="server" 
                            ControlToValidate="txtAge" 
                            ErrorMessage="Age must be between 18 and 100." 
                            MinimumValue="18" 
                            MaximumValue="100" 
                            Type="Integer" 
                            ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="Gender:" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator 
                            ID="rfvGender" 
                            runat="server" 
                            ControlToValidate="rblGender" 
                            InitialValue="" 
                            ErrorMessage="Please select a gender." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
