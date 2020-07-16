<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Stock_Management.Product.Addproduct" %>

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
 <table class="tbprod">
  <tr>
   <th colspan="3" class="tbprod_th">Add Product </th>
  </tr>
  <tr>
   <td class="tbprod_td1"> Product ID </td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_id" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( example : Product ID should be : Prod123456 )</td>
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
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_date" runat="server" CssClass="text_prod" placeholder=" Date "></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Date )</td>
  </tr>
  <tr>
   <td class="tbprod_td1">Manu. Expire Date</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_exp_date" runat="server" CssClass="text_prod" placeholder=" Date "></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Expire Date )</td>
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
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_product_category" runat="server" 
           CssClass="text_prod" Width="275px" AutoPostBack="True" 
           onselectedindexchanged="ddl_product_category_SelectedIndexChanged"></asp:DropDownList></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Product Dealer </td>
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_product_dealer" runat="server" 
           CssClass="text_prod" Width="275px" Enabled="False" OnSelectedIndexChanged="ddl_product_dealer_SelectedIndexChanged"></asp:DropDownList></td>
  </tr>
 </table>
 <div style="margin:10px 50px 10px 330px;">
  <asp:Button ID="Btn_Submit" runat="server" Text=" Submit " CssClass="btn_submit" 
         onclick="Btn_Submit_Click" />&nbsp;&nbsp;&nbsp;
  <asp:Button ID="Btn_Cancel" runat="server" Text=" Cancel " CssClass="btn_submit" />
 </div>
</div>
        </div>
        
        
        </div>
    </form>
</body>
</html>

