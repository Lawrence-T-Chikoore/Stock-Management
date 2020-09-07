<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSupplier.aspx.cs" Inherits="Stock_Management.Supplier.EditSupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
	<link href="../CSS/supplier.css" rel="stylesheet" type="text/css" />
	 <style type="text/css">
     .dealermenu
     {
         background:#D62F0D;
         padding:2px;
         list-style-type:none;
         display:block;
     }
     .dealermenu li
     {
         display:block;
         border-bottom:1px solid #000000;
     }
         .dealermenu li a {
             background: #D62F0D;
             padding: 20px 50px 20px 50px;
             list-style-type: none;
             display: block;
             color: #ffffff;
             text-decoration: none;
         }
         .dealermenu li a:hover {
             background: #000000;
             padding: 20px 50px 20px 50px;
             list-style-type: none;
             display: block;
             color: #ffffff;
             text-decoration: none;
         }
              * {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}
body, html {
    height: 100%;
    font-family: Raleway-Regular, sans-serif;
}
    .navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial;
}

    /* Links inside the navbar */
	     .navbar a {
	         float: left;
	         font-size: 16px;
	         color: white;
	         text-align: center;
	         padding: 14px 16px;
	         text-decoration: none;
	     }

	     /* The dropdown container */
	     .dropdown {
	         float: left;
	         overflow: hidden;
	     }

	         /* Dropdown button */
	         .dropdown .dropbtn {
	             font-size: 16px;
	             border: none;
	             outline: none;
	             color: white;
	             padding: 14px 16px;
	             background-color: inherit;
	             font-family: inherit; /* Important for vertical align on mobile phones */
	             margin: 0; /* Important for vertical align on mobile phones */
	         }

	         /* Add a red background color to navbar links on hover */
	         .navbar a:hover, .dropdown:hover .dropbtn {
	             background-color: red;
	         }

	     /* Dropdown content (hidden by default) */
	     .dropdown-content {
	         display: none;
	         position: absolute;
	         background-color: #f9f9f9;
	         min-width: 160px;
	         box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	         z-index: 1;
	     }

	         /* Links inside the dropdown */
	         .dropdown-content a {
	             float: none;
	             color: black;
	             padding: 12px 16px;
	             text-decoration: none;
	             display: block;
	             text-align: left;
	         }

	             /* Add a grey background color to dropdown links on hover */
	             .dropdown-content a:hover {
	                 background-color: #ddd;
	             }

	     /* Show the dropdown menu on hover */
	     .dropdown:hover .dropdown-content {
	         display: block;
	     }

	  .button {
    float: right;
    padding: 6px;
    margin-top: 8px;
    margin-right: 16px;
    background: red;
    font-size: 17px;
    border: none;
    cursor: pointer;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
	      table.center {
	          margin-left: auto;
	          margin-right: auto;
	          width: 70%;
	      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <div class="header">
         <div class="navbar">
  <a href="#home">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Customers
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/Customer/Customer.aspx">Customer</a>
      <a href="/Customer/viewcustomer.aspx">View Customers</a>
    </div>
  </div>
 <div class="dropdown">
    <button class="dropbtn">Suppliers
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/Supplier/Newsupplier.aspx">New Supplier</a>
      <a href="/Supplier/EditSupplier.aspx">Edit Supplier</a>
      <a href="/Supplier/ListSupplier.aspx">List Suppliers</a>
      <a href="/Supplier/Deletesupplier.aspx">Delete Supplier</a>
    </div>
  </div>
 <div class="dropdown">
    <button class="dropbtn">Products
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/Product/Addproduct.aspx">New Product</a>
      <a href="/Product/editproduct.aspx">Edit Product</a>
       <a href="/Product/deleteproduct.aspx">Delete Product</a>
    </div>
  </div>
 <div class="dropdown">
    <button class="dropbtn">Category
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/Category/category.aspx">Category</a>
    </div>
  </div>
 <div class="dropdown">
    <button class="dropbtn">Reports
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/Reports/customerreports.aspx">Customer Reports</a>
      <a href="/Reports/productreports.aspx">Product Report</a>
     
    </div>
  </div>
 <div class="login-container">
     <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="button" />
     
</div>
 
        
        
      

        </div>
        
      

        </div>
        
        <div id = "section">
<div style="padding:10px;">
<table class="center">
 <tr>
  <th colspan="3" class="addtableheader">Edit Dealer Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Dearler ID : </td>
  <td class="tdrow2"><asp:TextBox ID="txt_dealer_id" runat="server" CssClass="textbox"></asp:TextBox>
      <asp:Button ID="Btn_Get_Details" runat="server" Text="Get Details" 
          CssClass="Btn" onclick="Btn_Get_Details_Click"/></td>
 </tr>
 <tr>
  <td class="tdrow1">Dearler Name : </td>
  <td class="tdrow2"><asp:TextBox ID="txt_dealer_name" runat="server" CssClass="textbox"></asp:TextBox></td>
 </tr>
  <tr>
  <td class="tdrow1">Address : </td>
  <td class="tdrow2">
      <asp:TextBox ID="daddress" runat="server" 
          CssClass="textbox"></asp:TextBox></td>
 </tr>
 <tr>
  <td class="tdrow1">Landline : </td>
  <td class="tdrow2"><asp:TextBox ID="dlandline" runat="server" CssClass="textbox"></asp:TextBox></td>
 </tr>
 <tr>
  <td class="tdrow1">Telephone : </td>
  <td class="tdrow2"><asp:TextBox ID="dtelephone" runat="server" CssClass="textbox"></asp:TextBox></td>
 </tr>
</table>
<div style="width:70%; padding-top:20px; text-align:center;">
<asp:Button ID="Btn_Update_Dealer" runat="server" Text=" Update Dealer " 
        CssClass="Btn" onclick="Btn_Update_Dealer_Click" />&nbsp;&nbsp;&nbsp;<asp:Button ID="Btn_Reset" 
        runat="server" Text=" Reset " CssClass="Btn" onclick="Btn_Reset_Click"/>
</div>
</div>

        
        </div>
        
        
        </div>
    </form>
</body>
</html>

