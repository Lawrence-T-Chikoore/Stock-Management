<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="Stock_Management.Product.editproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>

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
              margin-top:10px;
	      }
</style>
	</style>
    <link href="../CSS/prod.css" rel="stylesheet" type="text/css" />
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
      <a href="/Customer/viewUser.aspx">View Customers</a>
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
      <a href="/Product/Addprodut.aspx">New Product</a>
      <a href="/Product/editprodut.aspx">Edit Product</a>
       <a href="/Product/deleteprodut.aspx">Delete Product</a>
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
      <a href="#">Customer Reports</a>
      <a href="#">Product Report</a>
     
    </div>
  </div>
 <div class="login-container">
     <asp:Button ID="btn" runat="server" Text="Logout" CssClass="button" />
     
</div>
 
        
        

        </div>
        
        <div id = "section">
<div>
 <table class="center">
  <tr>
   <th colspan="3" class="tbprod_th">Edit Product </th>
  </tr>
  <tr>
   <td class="tbprod_td1"> Product ID </td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_id" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button 
           ID="Btn_Get_Product" runat="server" Text=" Get Details " 
           style="padding:4px 10px 4px 10px;" CssClass="btn_submit" 
           onclick="Btn_Get_Product_Click" /></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Name </td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_name" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Company Name</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_company_name" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Manu. Date</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_date" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Date )</td>
  </tr>
  <tr>
   <td class="tbprod_td1">Manu. Expire Date</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_exp_date" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Expire Date )</td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Serial Number</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_serial_number" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Batch Number</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_batch_number" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> MRP Price</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_cost" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Cost of Product )</td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Quantity</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_quantity" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Product Category</td>
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_prod_category_edit" runat="server" 
           CssClass="text_prod" Width="275px" AutoPostBack="True" 
           onselectedindexchanged="ddl_prod_category_edit_SelectedIndexChanged1" ></asp:DropDownList></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Product Dealer </td>
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_prod_dealer_edit" runat="server" 
           CssClass="text_prod" Width="275px" Enabled="False"></asp:DropDownList></td>
  </tr>
 </table>
 <div style="margin:20px 50px 10px 215px;">
  <asp:Button ID="Btn_add_product" runat="server" Text=" Add New Product " 
         CssClass="btn_submit" onclick="Btn_add_product_Click" />&nbsp;&nbsp;&nbsp;<asp:Button 
         ID="Btn_Update" runat="server" Text=" Update " CssClass="btn_submit" 
         onclick="Btn_Update_Click" />&nbsp;&nbsp;&nbsp;
  <asp:Button ID="Btn_Edit" runat="server" Text=" Edit " CssClass="btn_submit" 
         onclick="Btn_Edit_Click" />&nbsp;&nbsp;&nbsp;
  <asp:Button ID="Btn_Cancel" runat="server" Text=" Cancel " CssClass="btn_submit" OnClick="Btn_Cancel_Click" />
 </div>
</div>

        
        </div>
        
        
        </div>
    </form>
</body>
</html>
