﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CYPHER_BOX.Login" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 95%;
        }
        .style3
        {
            width: 61px;
            height: 225px;
        }
        .style4
        {
            height: 225px;
        }
        .style5
        {
            margin-top: 87px;
            margin-left: 1px;
        }
        .style6
        {
            color: #FFFFFF;
        }
        .style10
        {
            text-decoration: none;
        }
        </style>
</head>
<body style="height: 334px" background="mainpage.jpg">
    <form id="form1" runat="server" style="color: #FFFFFF">
    <div>
    
 <h1 style="color: #FFFFFF; left: 12px; height: 47px; width: 1019px; text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CYPHER BOX</h1>
    
    </div>
        <table class="style1" style="color: #000000; height: 240px;">
            <tr>
                <td class="style3" >
    <asp:Menu ID="Menu1" runat="server" 
        DynamicHorizontalOffset="5" Font-Names="Verdana" Font-Size="1.3em" BackColor="#996633"
        ForeColor="#ffffff" StaticSubMenuIndent="10px" 
     >
        <DynamicHoverStyle BackColor="#7C6F57"  ForeColor="#669999" Font-Size="1.3em"/>
        <DynamicMenuItemStyle   ForeColor="#669999" HorizontalPadding="5px" ItemSpacing="0.5 em" VerticalPadding="15px" Font-Size="1.1em" />
        <DynamicMenuStyle   ForeColor="#669999" BackColor="#F7F6F3" Font-Size="1.1em"/>
        <DynamicSelectedStyle ForeColor="#669999"  BackColor="#5D7B9D"  Font-Size="1.1em"/>
        <DynamicItemTemplate>
            <%# Eval("Text") %>
        </DynamicItemTemplate>
        <Items>
            <asp:MenuItem Text="Login" Value="User Management" 
                NavigateUrl="~/Loginpage.aspx" SeparatorImageUrl="seperator.jpg">
            </asp:MenuItem>
           
            <asp:MenuItem Text="Register" Value="New Item" NavigateUrl="~/Registration.aspx" 
                SeparatorImageUrl="seperator.jpg">
            </asp:MenuItem>

            <asp:MenuItem Text="Encryption" Value="New Item" NavigateUrl="~/messageEncryption.aspx" 
                SeparatorImageUrl="seperator.jpg">
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
                </td>
                <td class="style4" style="color: #FFFFFF">
                <p style= "margin-left:5%; font-size: large;">
                    Encryption is the process of translating plain text dat (plaintext) into something that appears to be random and meaningless(ciphertext). Decryption is the process of converting ciphertext back to plaintext
                    <br />
                    <br />
                    The goal of every encryption algorithm is to make it as difficult as possible to decrypt the generated ciphertext without using the key. If a really good encryption algorithm is used, there is no technique significantly better than methodically trying every possible key. For such an algorithm, the longer the key, the more difficult it is to decrypt a piece of ciphertext without possessing the key
                    </p>
                    </td>
            </tr>
            </table>
    
      </form>
</body>
</html>