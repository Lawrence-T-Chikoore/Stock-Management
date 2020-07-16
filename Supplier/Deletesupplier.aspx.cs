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
    public partial class Deletesupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_get_Dealer_details_Click(object sender, EventArgs e)
        {
            DetailsViewDataBind();
        }
        private void DetailsViewDataBind()

        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Dealers WHERE dealerid LIKE @dealerid +'%'", conn);
            cmd.Parameters.AddWithValue("@dealerid", txt_prod_id.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
                lbl_delete_message.Text = "";
            }

            else
            {
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
                lbl_delete_message.Text = "<span style='background:#800080; color:#ffffff; padding:7px 10px 7px 10px; '> No Records found with these Product ID : <b><u>" + txt_prod_id.Text + "</u></b> </span>";

            }
        }
        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            string dealerID = DetailsView1.DataKey.Value.ToString();
            string DealerName = e.Values["dealername"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DELETE FROM [Dealers] WHERE [dealerid] = @dealerid", conn);
            cmd.Parameters.AddWithValue("@dealerid", txt_prod_id.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DetailsViewDataBind();

        }

        protected void PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}