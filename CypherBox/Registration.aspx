<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CYPHER_BOX.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Sign Up"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_firstname" runat="server"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_firstname" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_firstname" Display="Dynamic" ErrorMessage="Enter letters only" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_lastname" runat="server"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_lastname" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_lastname" Display="Dynamic" ErrorMessage="Enter letters only" Font-Italic="False" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox_username" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_username" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox_username" Display="Dynamic" ErrorMessage="password length must be between 7 to 10 characters" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9\s]{7,15}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_password" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox_password" Display="Dynamic" ErrorMessage="password length must be between 7 to 10 characters" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9\s]{7,15}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
        &nbsp;&nbsp; <asp:TextBox ID="TextBox_cpassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_cpassword" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_cpassword" Display="Dynamic" ErrorMessage="Passwords don't match" Font-Size="Small" ForeColor="#FF3300"></asp:CompareValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox_cpassword" Display="Dynamic" ErrorMessage="password length must be between 7 to 10 characters" Font-Size="X-Small" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9\s]{7,15}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Email ID"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox_emailid" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_emailid" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox_emailid" Display="Dynamic" ErrorMessage="Please enter valid Email ID" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button_submitregistration" runat="server" OnClick="Button_submitregistration_Click" Text="Sign Up" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_errormessage" runat="server" Font-Size="Small" ForeColor="#FF3300"></asp:Label>
        </form>
</body>
</html>
