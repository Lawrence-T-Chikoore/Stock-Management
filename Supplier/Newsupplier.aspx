<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newsupplier.aspx.cs" Inherits="Stock_Management.Supplier.Newsupplier" %>

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
  <th colspan="3" class="addtableheader">Dealer Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Dearler ID : </td>
  <td class="tdrow2">
      <asp:TextBox ID="did" runat="server" CssClass="textbox"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;( example : Dealer ID should be : DL456 )</td>
 </tr>
 <tr>
  <td class="tdrow1">Dearler Name : </td>
  <td class="tdrow2">
      <asp:TextBox ID="dname" runat="server" CssClass="textbox"></asp:TextBox>
     </td>
 </tr>
 <tr>
  <th colspan="3" style="background:#D62F0D; text-align:left; padding:5px 15px 5px 15px; color:#ffffff; font-size:1.3em; border:1px solid #ff0000;">Contact : </th>
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
<asp:Button ID="Btn_Add_Dealer" runat="server" Text=" Add Dealer " CssClass="Btn" 
        onclick="Btn_Add_Dealer_Click" />&nbsp;&nbsp;&nbsp;<asp:Button ID="Btn_Cancel" runat="server" Text=" Cancel " CssClass="Btn"/>
</div>
<asp:Label ID="lbldate" runat="server"></asp:Label>
</div>

        
        </div>
        
        
        </div>
    </form>
</body>
</html>
