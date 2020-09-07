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
        string cname, dname;
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

            if (Request.QueryString["ProdID"] != null)
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE prod_id LIKE @prod_id +'%'", conn);
                cmd.Parameters.AddWithValue("@prod_id", txt_product_id.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                da.Fill(ds); ;

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


                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
                    SqlCommand cd = new SqlCommand("SELECT * FROM updateprod'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cd);
                    DataTable ds_cid = new DataTable();
                    sda.Fill(ds);

                    if (ds_cid.Rows.Count > 0)
                    {
                        cname = ds_cid.Rows[0]["categoryname"].ToString();
                        dname = ds_cid.Rows[0]["dealername"].ToString();
                        Fill_Category(cname);
                        ddl_prod_dealer_edit.Items.Insert(0, new ListItem(dname));
                        ddl_prod_dealer_edit.SelectedIndex = 0;
                    }
                }

            }
        }
        public void BackgroundColor_ReadOnly()
        {
            txt_product_id.Style.Add("background", "#dddddd");
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
        public void BackgroundColor_White()
        {
            txt_product_id.Style.Add("background", "#dddddd");
            txt_product_name.Style.Add("background", "#ffffff");
            txt_prod_company_name.Style.Add("background", "#ffffff");
            txt_prod_manufacture_date.Style.Add("background", "#ffffff");
            txt_prod_manufacture_exp_date.Style.Add("background", "#ffffff");
            txt_product_serial_number.Style.Add("background", "#ffffff");
            txt_product_batch_number.Style.Add("background", "#ffffff");
            txt_product_cost.Style.Add("background", "#ffffff");
            txt_product_quantity.Style.Add("background", "#ffffff");
            ddl_prod_category_edit.Style.Add("background", "#ffffff");
            ddl_prod_dealer_edit.Style.Add("background", "#ffffff");
        }
        protected void Btn_Get_Product_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE prod_id LIKE @prod_id +'%'", con);
            cmd.Parameters.AddWithValue("@prod_id", txt_product_id.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds_prd = new DataTable();
            da.Fill(ds_prd);

            if (ds_prd.Rows.Count > 0)
            {
                txt_product_id.Text = ds_prd.Rows[0]["prod_id"].ToString();
                txt_product_name.Text = ds_prd.Rows[0]["prod_name"].ToString();
                txt_prod_company_name.Text = ds_prd.Rows[0]["prod_comp_name"].ToString();
                txt_prod_manufacture_date.Text = ds_prd.Rows[0]["prod_manu_date"].ToString();
                txt_prod_manufacture_exp_date.Text = ds_prd.Rows[0]["prod_manu_exp_date"].ToString();
                txt_product_serial_number.Text = ds_prd.Rows[0]["prod_item_serial_no"].ToString();
                txt_product_batch_number.Text = ds_prd.Rows[0]["prod_item_batch_no"].ToString();
                txt_product_cost.Text = ds_prd.Rows[0]["prod_item_cost"].ToString();
                txt_product_quantity.Text = ds_prd.Rows[0]["prod_item_quantity"].ToString();
                string cid = ds_prd.Rows[0]["prod_item_categoryid"].ToString();

                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
                SqlCommand md = new SqlCommand("SELECT * FROM Dealers ", conn);
                SqlDataAdapter sda = new SqlDataAdapter(md);
                DataTable ds_cat = new DataTable();
                sda.Fill(ds_cat);
                
                if (ds_cat.Rows.Count > 0)
                {
                    cname = ds_cat.Rows[0]["categoryname"].ToString();
                    dname = ds_cat.Rows[0]["dealername"].ToString();
                    Fill_Category(cname);
                    Fill_Dealer(dname);
                    ddl_prod_dealer_edit.Items.Insert(0, new ListItem(dname));
                    ddl_prod_dealer_edit.SelectedIndex = 0;

                }


                ReadOnly();
                BackgroundColor_ReadOnly();
                Btn_Update.Visible = false;
                Btn_Get_Product.Visible = false;
                Btn_add_product.Visible = true;
                Btn_Edit.Visible = true;
                Btn_Cancel.Visible = true;
            }

        }
        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            
            Btn_add_product.Visible = true;
            Btn_Edit.Visible = true;
            Btn_Cancel.Visible = true;
            Btn_Get_Product.Visible = false;
            Btn_Update.Visible = false;
            ReadOnly();
            BackgroundColor_ReadOnly();
        }

        public void Fill_Category(string catergoryname)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand md = new SqlCommand("SELECT * FROM Category", conn);
            SqlDataAdapter da = new SqlDataAdapter(md);
            DataTable ds_cid_cname = new DataTable();
            da.Fill(ds_cid_cname);
            if (ds_cid_cname.Rows.Count > 0)
            {
                ddl_prod_category_edit.DataSource = ds_cid_cname;
                ddl_prod_category_edit.DataTextField = "categoryname";
                ddl_prod_category_edit.DataValueField = "categoryid";
                ddl_prod_category_edit.DataBind();
                ddl_prod_category_edit.Items.Insert(0, new ListItem(catergoryname));
                ddl_prod_category_edit.SelectedIndex = 0;

            }
        }
        public void Fill_Dealer(string dealername)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand md = new SqlCommand("SELECT * FROM Dealers ", conn);
            SqlDataAdapter da = new SqlDataAdapter(md);
            DataTable ds_get_dealer = new DataTable();
            da.Fill(ds_get_dealer);
            if (ds_get_dealer.Rows.Count > 0)
            {
                ddl_prod_dealer_edit.DataSource = ds_get_dealer;
                ddl_prod_dealer_edit.DataTextField = "dealername";
                ddl_prod_dealer_edit.DataValueField = "dealerid";
                ddl_prod_dealer_edit.DataBind();
                ddl_prod_dealer_edit.Items.Insert(0, new ListItem(dealername));
                ddl_prod_dealer_edit.SelectedIndex = 0;
                ddl_prod_dealer_edit.Enabled = true;
                return;
            }
        }

        protected void ddl_prod_dealer_edit_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand md = new SqlCommand("SELECT * FROM Dealers WHERE dealerid", conn);
            SqlDataAdapter da = new SqlDataAdapter(md);
            DataTable ds_get_dealer = new DataTable();
            da.Fill(ds_get_dealer);
            if (ds_get_dealer.Rows.Count > 0)
            {
                ddl_prod_dealer_edit.DataSource = ds_get_dealer;
                ddl_prod_dealer_edit.DataTextField = "dealername";
                ddl_prod_dealer_edit.DataValueField = "dealerid";
                ddl_prod_dealer_edit.DataBind();
                ddl_prod_dealer_edit.Items.Insert(0, new ListItem(" Select Dealer ", "0"));
                ddl_prod_dealer_edit.SelectedIndex = 0;
                ddl_prod_dealer_edit.Enabled = true;
                return;
            }

        }

       
    }
}


