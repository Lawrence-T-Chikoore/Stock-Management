<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Stock_Management.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	 <link rel="stylesheet" href="css/style.css">
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

        
        </div>
        
        
        </div>
    </form>
</body>
</html>
