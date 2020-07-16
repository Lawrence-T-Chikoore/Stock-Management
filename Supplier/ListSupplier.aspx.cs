using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Stock_Management.Supplier
{
    public partial class ListSupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.SearchCustomer();
            }
        }
        private void SearchCustomer()
        {
            string constr = "Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM Dealers WHERE dealername LIKE @dealername +'%'";
                    cmd.Parameters.AddWithValue("@dealername", txt_search.Text.Trim());

                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

        }
        protected void Search(object sender, EventArgs e)
        {
            this.SearchCustomer();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.SearchCustomer();
        }
    }
}