<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deletesupplier.aspx.cs" Inherits="Stock_Management.Supplier.Deletesupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
    <style>
	       .addtable
{
    border-collapse:collapse;
    border:1px solid #ff0000;
    padding:10px;
    width:70%;
}
.addtableheader
{
    background:#FA5858;
    text-align:left;
    padding:10px 15px 10px 15px;
    color:#ffffff;
    font-size:1.5em;
    border:1px solid #ff0000;
}
.tdrow1
{
    background-color:#dddddd;
    width:300px;
    padding:5px 10px 5px 20px;
    border:1px solid #ff0000;
    font-weight:bold;
}
.tdrow2
{
    border:1px solid #ff0000;
    padding:4px 10px 4px 10px;
}
.textbox
{
    padding:3px 10px 3px 10px;
    width:250px;
}
.Btn
{
    padding:7px 10px 7px 10px;
    background:#2E9AFE;
    border:1px solid #2E9AFE;
    color:#ffffff;
    font-weight:bold;
}
.Btn:hover
{
    padding:7px 10px 7px 10px;
    background:#2E9AFE;
    border:1px solid #2E9AFE;
    color:#000000;
    font-weight:bold;

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

        <div style="padding:10px;">
<table class="center">
 <tr>
  <th colspan="3" class="addtableheader">Delete Dealer Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Dealer ID : </td>
  <td class="tdrow2"><asp:TextBox ID="txt_prod_id" runat="server" CssClass="textbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;( example : Dealer ID should be : DL456 )&nbsp;&nbsp;&nbsp;<asp:Button 
          ID="Btn_get_Dealer_details" runat="server" Text=" Get Details " CssClass="Btn" OnClick="Btn_get_Dealer_details_Click"  /></td>
 </tr>
 </table>
 </div>
 <div style="margin:20px 50px 20px 350px;">
 <asp:Label ID="lbl_delete_message" runat="server"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="350px" 
        AutoGenerateDeleteButton="True" AutoGenerateRows="False" 
         DataKeyNames="dealerid" OnItemDeleting="DetailsView1_ItemDeleting" OnPageIndexChanging="PageIndexChanging">
        <CommandRowStyle BackColor="#6600FF" Font-Bold="True" Font-Overline="False" 
            Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" 
            ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="dealerid" HeaderText="Product ID" />
            <asp:BoundField DataField="dealername" HeaderText="dealer name" />
            <asp:BoundField DataField="dealeraddress" HeaderText="Company address" />
            <asp:BoundField DataField="dealerlandline" HeaderText="landline" />
            <asp:BoundField DataField="dealertel" HeaderText="telephone" />
        </Fields>
        <RowStyle BackColor="#99CCFF" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DetailsView>
    </div>
        </div>
        
        
        </div>
    </form>
</body>
</html>

