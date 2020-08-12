﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Stock_Management.login" %>

<head runat="server">
    <title></title>
 
   <meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />


    <link href="CSS/smsmaster.css" rel="stylesheet" type="text/css" />
    <!--<link href="CSS/menu.css" rel="stylesheet" type="text/css" />-->
    <style type="text/css">
     #menu_hr
     {
         background:#201B1A;
         width:100%;
         margin:-5px 8px 0px -8px;
     }
     #menu_hr ul
     {
         width:auto;
         padding:10px;
     }
     #menu_hr ul li
     {
         list-style-type:none;
         display:inline;
         padding-right:5px;
         padding-left:5px;
     }
        #menu_hr ul li a {
            background: #201B1A;
            text-decoration: none;
            color: #ffffff;
            padding: 10px 15px 10px 15px;
        }
     #menu_hr ul li a:hover
     {
         background:#D62F0D;
         padding:10px 15px 10px 15px;
         text-decoration:none;
         color:#ffffff;         
          
     }
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div style="             background-color: #000000;
             width: 100%;
             margin-top: -8px;
             margin-left: -8px;
             padding: 10px 0px 10px 0px;">
      <div class="head_logo">
      &nbsp;MINERVA STORES SYSTEM</div>
     </div>
        
    <table align="center" class="style1" style="border: thin solid black">
<tr>
<td colspan="3" 
style="border-bottom: thin solid black; font-weight: 700; text-align: center;">
    LOGIN</td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style4">
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td class="style6">
UserName :
</td>
<td class="style4">
<asp:TextBox ID="txtfname" runat="server" Width="120px"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="txtfname" ErrorMessage="enter name!!" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
ControlToValidate="txtfname" ErrorMessage="invalid name" ForeColor="Red" 
ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td class="style6">
Password&nbsp; :</td>
<td class="style4">
<asp:TextBox ID="txtpassword" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
ControlToValidate="txtpassword" ErrorMessage="enter password!!" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style4">
<asp:Button ID="btnregistration" runat="server" Text="Login" 
onclick="btnregistration_Click" />
</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style2" colspan="2">
<asp:Label ID="lblmsg" runat="server"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">register</asp:LinkButton>
</td>
</tr>
<tr>
<td colspan="3" class="auto-style1">
    </td>
</tr>
</table>
</asp:Content>


     <!--
     <div id="menu_hr" style="margin:-20px 20px 0px -8px;">
      <ul>
       <li><a href="AddDealer.aspx"> Dealer </a></li>
       <li><a href="AddProduct.aspx"> Product </a></li>
       <li><a href="Category.aspx"> Category </a></li>
       <li><a href="#"> Order </a></li>
       <li><a href="#"> Reports </a></li>
      </ul>
     </div>
     -->
    </div>
    </form>
</body>
</html>
