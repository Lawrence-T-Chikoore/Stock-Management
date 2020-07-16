<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Stock_Management.Customer.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <div class="header">
        <h1>Stock Management</h1>
        </div>
        
        <div class="container">
           <nav>
		<ul class="mcd-menu">
            <li>
				<a href="" class="active">
					<i class="fa fa-edit"></i>
					<strong>Home</strong>
					
				</a>
			</li>
			<li>
				<a href="">
					<i class="fa fa-comments-o"></i>
					<strong>Suppliers</strong>
				</a>
				<ul>
					<li><a href="#"><i class="fa fa-globe"></i>New Supplier</a></li>
					<li>
						<a href="#"><i class="fa fa-group"></i>Edit Supplier</a>
					</li>
					<li><a href="#"><i class="fa fa-trophy"></i>Delete Supplier</a></li>
					<li><a href="#"><i class="fa fa-certificate"></i>Dealer List</a></li>
				</ul>
			</li>
            <li>
				<a href="">
					<i class="fa fa-comments-o"></i>
					<strong>Products</strong>
				</a>
				<ul>
					<li><a href="#"><i class="fa fa-globe"></i>New Product</a></li>
					<li>
						<a href="#"><i class="fa fa-group"></i>Edit Product</a>
					</li>
					<li><a href="#"><i class="fa fa-trophy"></i>Delete Product</a></li>
				</ul>
			</li>
              <li>
				<a href="">
					<i class="fa fa-comments-o"></i>
					<strong>Customers</strong>
				</a>
				<ul>
					<li><a href="#"><i class="fa fa-globe"></i>Customers</a></li>
					<li>
						<a href="#"><i class="fa fa-group"></i>View Customer</a>
					</li>
					
				</ul>
			</li>
            	<li>
				<a href="">
					<i class="fa fa-comments-o"></i>
					<strong>Category</strong>
				</a>
                    <ul>
					<li><a href="#"><i class="fa fa-globe"></i>Products</a></li>
					<li>
						<a href="#"><i class="fa fa-group"></i>Suppliers</a>
					</li>
					
				</ul>
				
			</li>
            
            
			<li>
				<a href="">
					<i class="fa fa-picture-o"></i>
					<strong>Reports</strong>
				</a>
			</li>
			
		</ul>
	</nav>

        </div>
        
        <div id = "section">

         <div style="margin:10px 50px 10px 150px;">
     <table class="tbcust">
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
