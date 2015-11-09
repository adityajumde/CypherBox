<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileEncryption.aspx.cs" Inherits="CypherBox.fileEncryption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="css/Background.css" rel="stylesheet" />
    <title></title>
    <style>
.roundCorner
{
    border-radius: 25px;
    background-color: #4F81BD;
    color:#FFFFFF;
    text-align :center;
    font-family:arial, helvetica, sans-serif;
    padding: 5px 10px 10px 10px;
    font-weight:bold;
    width:100px;
    height:30px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
    FILE ENCRYPTION
    </div>
        <div id="left1"></div><br /><br /><br /><br />
        <p>
            <asp:FileUpload ID="FileUp" CssClass="roundCorner" runat="server" Width="269px" /><br /><br />
            <asp:Button ID="readText" CssClass="roundCorner" runat="server" OnClick="readText_Click" Text="Encrypt File" Width="122px" /> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="decryptFile" CssClass="roundCorner" runat="server" Text="Decrypt File" Width="128px" OnClick="decryptFile_Click" />
          
        </p>
        <asp:TextBox ID="textFromFile" CssClass="roundCorner" runat="server" Height="107px" Width="263px" TextMode="MultiLine"></asp:TextBox>
    </form>
    
</body>
</html>
