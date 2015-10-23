<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messageEncryption.aspx.cs" Inherits="CypherBox.mesasgeEncryption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Messafe Encryption</p>
    </div>
        <asp:TextBox ID="messageInput" runat="server" Height="73px" TextMode="MultiLine" Width="261px"></asp:TextBox>
        <p>
            <asp:Button ID="Encrypt" runat="server" Height="41px" OnClick="Encrypt_Click" Text="Encrypt" Width="152px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Decrypt" runat="server" style="margin-top: 0px" Text="Decrypt" Width="167px" Height="40px" OnClick="Decrypt_Click" />
        </p>
        <asp:TextBox ID="encryptedMessage" runat="server" Height="72px" TextMode="MultiLine" Width="253px"></asp:TextBox>
    </form>
</body>
</html>
