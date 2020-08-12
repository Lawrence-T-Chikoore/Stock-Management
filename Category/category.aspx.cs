using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Stock_Management.Category
{
    public partial class category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                Fill_DDL_Dealer();
            }
        }

        protected void Btn_Add_Category_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("insert into Category(categoryid,categoryname,category_did)values(@categoryid,@categoryname,@category_did)", conn);
            cmd.Parameters.AddWithValue("@categoryid", txt_category_ID.Text.Trim());
            cmd.Parameters.AddWithValue("@categoryname", txt_category_name.Text.Trim());
            cmd.Parameters.AddWithValue("@category_did", ddl_cat_dealer.SelectedValue.ToString());
           

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();

        }
      

        public void Fill_DDL_Dealer()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Dealers ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                ddl_cat_dealer.DataSource = ds;
                ddl_cat_dealer.DataTextField = "dealername";
                ddl_cat_dealer.DataValueField = "dealerid";
                ddl_cat_dealer.DataBind();
                ddl_cat_dealer.Items.Insert(0, new ListItem(" Select ", "0"));
                ddl_cat_dealer.SelectedIndex = 0;
            }

        }
    }
}