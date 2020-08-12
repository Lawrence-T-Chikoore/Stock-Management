using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Stock_Management.Customer
{
    public partial class customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CID"] != null)
                {
                    G_D_CID();
                    Get_Product();
                    Get_Cash_Payment_Mode();
                }
                else
                {
                    Get_Date_CustID();
                }
            }
        }

        private void G_D_CID()
        {
            txt_cust_ID.Text = Session["CID"].ToString();
            txt_cust_date.Text = DateTime.Today.Date.ToShortDateString();
        }
        private void Get_Date_CustID()
        {
            DateTime time = DateTime.Now;             // Use current time.
            string format = "MMddyyyyHHmmssfff";   // Use this format.
                                                   //Label1.Text = (time.ToString(format));
            txt_cust_ID.Text = "Cust" + (time.ToString(format));
            Session["CID"] = txt_cust_ID.Text;
            txt_cust_date.Text = DateTime.Today.Date.ToShortDateString();
        }
        private void Get_Product()
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=SMS;Integrated Security=True"))
            {
                SqlCommand cmd = new SqlCommand("Select prod_id, prod_name from Product", con);
                con.Open();
                ddl_cust_prod_ID.DataSource = cmd.ExecuteReader();



                ddl_cust_prod_ID.DataValueField = "prod_id";
                ddl_cust_prod_ID.DataTextField = "prod_name";
                ddl_cust_prod_ID.DataBind();
                ddl_cust_prod_ID.Items.Insert(0, new ListItem(" Select ", "0"));
                ddl_cust_prod_ID.SelectedIndex = 0;

            }


        }
        private void Get_Category_through_ProdID()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Category ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                ddl_cust_category.DataSource = ds;
                ddl_cust_category.DataTextField = "categoryname";
                ddl_cust_category.DataValueField = "categoryid";
                ddl_cust_category.DataBind();
                ddl_cust_category.Items.Insert(0, new ListItem(" Select ", "0"));
                ddl_cust_category.SelectedIndex = 0;
            }
        }
        private void Get_Cash_Payment_Mode()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Payment ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                ddl_cust_cash_mode.DataSource = ds;
                ddl_cust_cash_mode.DataTextField = "payment_type";
                ddl_cust_cash_mode.DataValueField = "paymentID";
                ddl_cust_cash_mode.DataBind();
                ddl_cust_cash_mode.Items.Insert(0, new ListItem(" Select ", "0"));
                ddl_cust_cash_mode.SelectedIndex = 0;
            }
        }

        protected void ddl_cust_prod_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            Get_Category_through_ProdID();
        }
        protected void Btn_Custom_submit_Click(object sender, EventArgs e)
        {

        }

        protected void txt_cust_total_price_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

        
    
