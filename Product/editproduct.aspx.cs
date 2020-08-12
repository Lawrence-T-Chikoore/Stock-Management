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
    public partial class editproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                if (Request.QueryString["ProdID"] != null)
                {
                    ReadOnly();
                    Get_prod_ID();
                   
                    Btn_Update.Visible = false;
                    Btn_Get_Product.Visible = false;
                }
                else
                {
                    Btn_add_product.Visible = false;
                    Btn_Cancel.Visible = false;
                    Btn_Edit.Visible = false;
                    Btn_Update.Visible = false;
                    Btn_Get_Product.Visible = true;

                    txt_product_id.ReadOnly = false;
                    txt_product_name.ReadOnly = true;
                    txt_prod_company_name.ReadOnly = true;
                    txt_prod_manufacture_date.ReadOnly = true;
                    txt_prod_manufacture_exp_date.ReadOnly = true;
                    txt_product_serial_number.ReadOnly = true;
                    txt_product_batch_number.ReadOnly = true;
                    txt_product_cost.ReadOnly = true;
                    txt_product_quantity.ReadOnly = true;
                    ddl_prod_category_edit.Enabled = false;
                    ddl_prod_dealer_edit.Enabled = false;


                    txt_product_name.Style.Add("background", "#dddddd");
                    txt_prod_company_name.Style.Add("background", "#dddddd");
                    txt_prod_manufacture_date.Style.Add("background", "#dddddd");
                    txt_prod_manufacture_exp_date.Style.Add("background", "#dddddd");
                    txt_product_serial_number.Style.Add("background", "#dddddd");
                    txt_product_batch_number.Style.Add("background", "#dddddd");
                    txt_product_cost.Style.Add("background", "#dddddd");
                    txt_product_quantity.Style.Add("background", "#dddddd");
                    ddl_prod_category_edit.Style.Add("background", "#dddddd");
                    ddl_prod_dealer_edit.Style.Add("background", "#dddddd");

                }
            }
        }
        public void ReadOnly()
        {
            txt_product_id.ReadOnly = true;
            txt_product_name.ReadOnly = true;
            txt_prod_company_name.ReadOnly = true;
            txt_prod_manufacture_date.ReadOnly = true;
            txt_prod_manufacture_exp_date.ReadOnly = true;
            txt_product_serial_number.ReadOnly = true;
            txt_product_batch_number.ReadOnly = true;
            txt_product_cost.ReadOnly = true;
            txt_product_quantity.ReadOnly = true;
            ddl_prod_category_edit.Enabled = false;
            ddl_prod_dealer_edit.Enabled = false;


        }
        public void ReadOnlyfalse()
        {
            // Allow to Enter some Text
            txt_product_id.ReadOnly = true;
            txt_product_name.ReadOnly = false;
            txt_prod_company_name.ReadOnly = false;
            txt_prod_manufacture_date.ReadOnly = false;
            txt_prod_manufacture_exp_date.ReadOnly = false;
            txt_product_serial_number.ReadOnly = false;
            txt_product_batch_number.ReadOnly = false;
            txt_product_cost.ReadOnly = false;
            txt_product_quantity.ReadOnly = false;
            ddl_prod_category_edit.Enabled = true;
            ddl_prod_dealer_edit.Enabled = true;


        }

        protected void Btn_add_product_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Product/AddProduct.aspx");
        }
        protected void Btn_Edit_Click(object sender, EventArgs e)
        {
            Get_prod_ID();
      
            ReadOnlyfalse();
            //DDL_Category();
            //DDL_Dealer();
            Btn_add_product.Visible = false;
            Btn_Edit.Visible = false;
            Btn_Get_Product.Visible = false;
            Btn_Update.Visible = true;
        }
        public void Get_prod_ID()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (Request.QueryString["ProdID"] != null)
            {

                if (ds.Rows.Count > 0)
                {
                    txt_product_id.Text = ds.Rows[0]["prod_id"].ToString();
                    txt_product_name.Text = ds.Rows[0]["prod_name"].ToString();
                    txt_prod_company_name.Text = ds.Rows[0]["prod_comp_name"].ToString();
                    txt_prod_manufacture_date.Text = ds.Rows[0]["prod_manu_date"].ToString();
                    txt_prod_manufacture_exp_date.Text = ds.Rows[0]["prod_manu_exp_date"].ToString();
                    txt_product_serial_number.Text = ds.Rows[0]["prod_item_serial_no"].ToString();
                    txt_product_batch_number.Text = ds.Rows[0]["prod_item_batch_no"].ToString();
                    txt_product_cost.Text = ds.Rows[0]["prod_item_cost"].ToString();
                    txt_product_quantity.Text = ds.Rows[0]["prod_item_quantity"].ToString();
                    string cid = ds.Rows[0]["prod_item_categoryid"].ToString();

                    DataSet ds_cid = new DataSet();


                }
            }
        }

        protected void ddl_prod_category_edit_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Get_Product_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Cancel_Click(object sender, EventArgs e)
        {

        }
    }
}


