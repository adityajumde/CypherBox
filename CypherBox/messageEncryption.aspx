﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messageEncryption.aspx.cs" Inherits="CypherBox.mesasgeEncryption" %>

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
            <asp:Button ID="Encrypt" runat="server" Height="41px" Text="Encrypt" Width="152px" />
        </p>
        <asp:TextBox ID="encryptedMessage" runat="server" Height="72px" TextMode="MultiLine" Width="253px"></asp:TextBox>
    </form>
</body>
</html>