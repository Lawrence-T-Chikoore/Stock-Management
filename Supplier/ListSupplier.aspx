<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSupplier.aspx.cs" Inherits="Stock_Management.Supplier.ListSupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
	  <style type="text/css">
      .addtable
{
    border-collapse:collapse;
    border:1px solid #ff0000;
    padding:10px;
    width:70%;
}
.addtableheader
{
    background:#D62F0D;
    text-align:left;
    padding:10px 15px 10px 15px;
    color:#ffffff;
    font-size:1.5em;
    border:1px solid #ff0000;
}
        .GridView1 {
            background-color: #dddddd;
            padding: 7px 10px 7px 10px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 50px;
        }
.Grd_HeaderStyle
{
    background:#6699cc;
    color:#ffffff;
    padding:7px 10px 7px 10px;
}
.Grd_row
{
    padding:20px 10px 7px 10px;
}

	      .txtsearch {
	          padding: 3px 10px 3px 10px;
	          margin: 8px 220px 0px -160px;
	          text-align: left;
	          float: right;
	      }
.btnsearch
{
    margin:8px -100px 0px -50px;
    padding:4px 10px 4px 10px;
    background:#D62F0D;
    color:#ffffff;
    border:1px solid #D62F0D;    
    float:right;
}

/* Menu
-------------------*/
        .dealermenu {
            background: #D62F0D;
            padding: 2px;
            list-style-type: none;
            display: block;
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
     <asp:Button ID="btn" runat="server" Text="Logout" CssClass="button" />
     
</div>
 
        
        
      

        </div>
        
        <div id = "section">
 <table class="center">
 <tr>
  <th class="addtableheader" colspan="3">List Of Dealers Details : </th>
 </tr>
</table>
<div >
<asp:TextBox ID="txt_search" CssClass="txtsearch" runat="server" OnTextChanged="Search" placeholder="Search ..." ></asp:TextBox>
    <asp:Button ID="Btn_Search" runat="server" CssClass="btnsearch" Text=" Search " 
       />
</div>
    <asp:GridView ID="GridView1" runat="server" CssClass="GridView1" OnPageIndexChanging = "OnPaging" >
<HeaderStyle CssClass="Grd_HeaderStyle"></HeaderStyle>
    </asp:GridView>
    
        
        
        </div>
    </form>
</body>
</html>

