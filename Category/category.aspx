<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Stock_Management.Category.category" %>

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

         <table class="tbcat">
  <tr>
   <th colspan="3" class="tbcat_th">
       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
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
