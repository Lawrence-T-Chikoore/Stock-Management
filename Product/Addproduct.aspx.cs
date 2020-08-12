using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Stock_Management.Product
{
    public partial class Addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Category();

            }

        }
        public void Fill_Category()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Category ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                ddl_product_category.DataSource = ds;
                ddl_product_category.DataTextField = "categoryname";
                ddl_product_category.DataValueField = "categoryid";
                ddl_product_category.DataBind();
                ddl_product_category.Items.Insert(0, new ListItem(" Select Category ", "0"));
                ddl_product_category.SelectedIndex = 0;

            }



        }

        protected void ddl_product_category_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Dealers ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                ddl_product_dealer.DataSource = ds;
                ddl_product_dealer.DataTextField = "dealername";
                ddl_product_dealer.DataValueField = "dealerid";
                ddl_product_dealer.DataBind();
                ddl_product_dealer.Items.Insert(0, new ListItem(" Select Dealer ", "0"));
                ddl_product_dealer.SelectedIndex = 0;
                ddl_product_dealer.Enabled = true;
                return;

            }

        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("insert into Product(prod_id,prod_name,prod_comp_name,prod_manu_date,prod_manu_exp_date,prod_item_serial_no,prod_item_batch_no,prod_item_cost,prod_item_quantity,prod_item_categoryid,prod_item_dealerid)values(@prod_id,@prod_name,@prod_comp_name,@prod_manu_date,@prod_manu_exp_date,@prod_item_serial_no,@prod_item_batch_no,@prod_item_cost,@prod_item_quantity,@prod_item_categoryid,@prod_item_dealerid)", conn);
            cmd.Parameters.AddWithValue("@prod_id", txt_product_id.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_name", txt_product_name.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_comp_name", txt_prod_company_name.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_manu_date", txt_prod_manufacture_date.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_manu_exp_date", txt_prod_manufacture_exp_date.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_item_serial_no", txt_product_serial_number.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_item_batch_no", txt_product_batch_number.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_item_cost", txt_product_cost.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_item_quantity", txt_product_quantity.Text.Trim());
            cmd.Parameters.AddWithValue("@prod_item_categoryid", ddl_product_category.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@prod_item_dealerid", ddl_product_dealer.SelectedValue.ToString());

           
        


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();
        }

        protected void ddl_product_dealer_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    
}