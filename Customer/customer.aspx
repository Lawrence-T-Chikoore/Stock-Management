<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Stock_Management.Customer.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
      <style type="text/css">
  .tbcust
  {
      border-collapse:collapse;
      width:80%;
  }  
   .tbcust, .tbcust_th, .tbcust_td1, .tbcust_td2
  {      
      border:1px solid #6699cc;
  }
  .tbcust_th
  {
      background-color:#006699;
      color:#ffffff;
      font-size:1.6em;
      font-weight:bold;
      padding:7px 10px 7px 10px;      
  }
  .tbcust_th_sub
  {
      background-color:#800080;
      color:#ffffff;
      font-size:1.2em;
      font-weight:bold;
      padding:5px 10px 5px 10px;      
  }
  .tbcust_td1
  {
      background-color:#dddddd;
      color:#333333;
      padding:4px 8px;
      width:120px;
      vertical-align:middle;
      text-align:right;
  }
  .tbcust_td2
  {
      padding:5px 10px 5px 10px;
      width:250px;
  }
  .txt_cust_readOnly
  {
      padding:3px 8px;
      width:220px;
      background:#dddddd;
  }
  .txt_cust_regullar
  {
      padding:3px 8px;
      width:220px;
    }
    .btn_submit
    {
        background:#006699;
        color:#ffffff;
        padding:8px 12px 8px 12px;
        border:1px solid #006699;
        margin:0px 50px 10px 500px;
        position:fixed;
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
    <script src="../JS/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="../JS/cust_js.js" type="text/javascript"></script>
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

         <div style="margin:10px 50px 10px 150px;">
     <table class="center">
      <tr>
       <th class="tbcust_th" colspan="4">Customer Details : </th>
      </tr>
      <tr>
       <td class="tbcust_td1">
         Customer ID :
       </td>
       <td class="tbcust_td2">
         <asp:TextBox ID="txt_cust_ID" runat="server" CssClass="txt_cust_readOnly" 
               ReadOnly="True"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
         Date :
       </td>
       <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_date" runat="server" CssClass="txt_cust_readOnly" 
               ReadOnly="True"></asp:TextBox>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
        Customer Name :
       </td>
       <td class="tbcust_td2">
         <asp:TextBox ID="txt_cust_name" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
        Phone | Mobile No :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_phone_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
      </tr>
      <tr>
        <td class="tbcust_td1" colspan="1" valign="middle" align="center">
         Address :
        </td>
        <td class="tbcust_td2" colspan="3">
         <asp:TextBox ID="txt_cust_address" runat="server" CssClass="txt_cust_regullar" 
                TextMode="MultiLine" Width="490px" Columns="600" Rows="5"></asp:TextBox>
        </td>
      </tr>      
      <tr>
       <td class="tbcust_td1">
        Product Name :
       </td>
       <td class="tbcust_td2">
       <asp:DropDownList ID="ddl_cust_prod_ID" runat="server" CssClass="txt_cust_regullar" 
               Width="239px" AutoPostBack="True" 
               onselectedindexchanged="ddl_cust_prod_ID_SelectedIndexChanged"></asp:DropDownList>
       </td>
       <td class="tbcust_td1">
        Category :
       </td>
       <td class="tbcust_td2">
        <asp:DropDownList ID="ddl_cust_category" runat="server" CssClass="txt_cust_regullar" Width="239px"></asp:DropDownList>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
         Quantity :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_prod_qty" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
       Total Price :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_total_price" runat="server" CssClass="txt_cust_readOnly" ReadOnly="true"></asp:TextBox>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
        Cash Mode :
       </td>
       <td class="tbcust_td2" colspan="3">
        <asp:DropDownList ID="ddl_cust_cash_mode" runat="server" CssClass="txt_cust_regullar" Width="239px">
           </asp:DropDownList>
       </td>
      </tr>
      <tr id="trcashmode">
       <td id="tdcashmode" colspan="4">
        <div id="cashtab" align="center">
        <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Cash :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Cash Received :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_cash_received" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 ZWL Only
         </td>
        </tr>
       </table>
       </div>
        <div id="checktab" align="center">
           <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Check | D.D :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
             Name :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust__bank_name_check" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- Gloria)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
             Number :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_check_dd_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- " 000000 ")
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Check Amount :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_check_amount" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 ZWL Only
         </td>
        </tr>
       </table>
        </div>
        <div id="credit_debit_tab" align="center">
           <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Credit | Debit Card  :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Credit | Debit Card No :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_card_no" runat="server" CssClass="txt_cust_regullar" placeholder=" enter 16 digits number please.."></asp:TextBox>&nbsp;(ex:- 5999 7888 4777 2666)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Please Enter Transaction Number :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_trnx_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- TrnxID : 123456)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Amount :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_card_amount" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 ZWL Only
         </td>
        </tr>
       </table>
        </div>
       </td>
      </tr>
     </table>
    </div>
    <asp:Button ID="Btn_Custom_submit" runat="server" Text=" Submit " 
        CssClass="btn_submit" onclick="Btn_Custom_submit_Click"/>
        </div>
        
        
        </div>
    </form>
</body>
</html>
