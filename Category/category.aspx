<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Stock_Management.Category.category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
     <style type="text/css">
  .tbcat
  {
      border-collapse:collapse;    
      margin:25px 250px 20px 230px;  
  }
  .tbcat_th
  {
      border:1px solid #008000;
      background-color:#008000;
      color:#ffffff;
      padding:7px 10px 7px 10px;
      text-align:left;
      font-size:1.5em;
      font-weight:bold;
  }
  .tbcat_td1
  {
      border:1px solid #008000;
      background-color:#66CC99;
      color:#000000;
      padding:5px 10px 5px 10px;
      width:200px;      
      font-weight:bold;
  }
  .tbcat_td2
  {
      border:1px solid #008000;
      padding:5px 10px 5px 10px;
      
  }
  .txt
  {
      padding:3px 10px 3px 10px;
      width:250px;
  }
  .btncat
  {
      padding:7px 10px 7px 10px;
      background:#800080;
      border:1px solid #800080;
      color:#ffffff;
  }
     #Button1 {
         float: right;
         border: #555555;
        font-size: 20px;
        background:black;
      color:#ffffff;
      padding:7px 10px 7px 10px;
      border:1px solid black;
         
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

         <table class="tbcat">
  <tr>
   <th colspan="3" class="tbcat_th">
       Add Category : </th>
  </tr>
  <tr>
   <td class="tbcat_td1"> Category ID : </td>
   <td class="tbcat_td2">
 <asp:TextBox ID="txt_category_ID" runat="server" CssClass="txt" MaxLength="10"></asp:TextBox>&nbsp;&nbsp&nbsp;&nbsp; ( example : Category ID should be : CAT1234567 )
 </td>
 </tr>
 <tr>
 <td class="tbcat_td1"> Category Name : </td>
   <td class="tbcat_td2">
   <asp:TextBox ID="txt_category_name" runat="server" CssClass="txt"></asp:TextBox>
   </td>
 </tr>
 <tr>
  <td class="tbcat_td1">Dealer </td>
  <td class="tbcat_td2">
  <asp:DropDownList ID="ddl_cat_dealer" runat="server" CssClass="txt" Width="275px"></asp:DropDownList>
  </td>
 </tr>
 </table>
 <div style="margin:25px 480px 20px 530px;" >
 <asp:Button ID="Btn_Add_Category" runat="server" CssClass="btncat" 
         Text=" ADD Category " onclick="Btn_Add_Category_Click" />
 </div>
 <div style="margin:25px 400px 20px 420px;" >
 <asp:GridView ID="grd_category" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical">
     <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
         <asp:BoundField DataField="categoryid" HeaderText=" Category ID " />
         <asp:BoundField DataField="categoryname" HeaderText=" Category Name " />
         <asp:BoundField DataField="dealername" HeaderText=" Dealer Name " />
     </Columns>
     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"  />
     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#0000A9" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#000065" />
  
 </asp:GridView>
 </div>
        </div>
        
        
        </div>
    </form>
</body>
</html>
