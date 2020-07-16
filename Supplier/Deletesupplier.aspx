﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deletesupplier.aspx.cs" Inherits="Stock_Management.Supplier.Deletesupplier" %>

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

        <div style="padding:10px;">
<table class="addtable">
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
