using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Stock_Management.Supplier
{
    public partial class Newsupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Btn_Add_Dealer_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            string dealer_registered_date = DateTime.Today.Date.ToShortDateString();
            cmd = new SqlCommand("insert into Dealers(dealerid,dealername,dealeraddress,dealerlandline,dealertel,dealership_since)values(@dealerid,@dealername,@dealeraddress,@dealerlandline,@dealertel,@dealership_since)", conn);
            cmd.Parameters.AddWithValue("@dealerid", did.Text.Trim());
            cmd.Parameters.AddWithValue("@dealername", dname.Text.Trim());
            cmd.Parameters.AddWithValue("@dealeraddress", daddress.Text.Trim());
            cmd.Parameters.AddWithValue("@dealerlandline", dlandline.Text.Trim());
            cmd.Parameters.AddWithValue("@dealertel", dtelephone.Text.Trim());
            cmd.Parameters.AddWithValue("@dealership_since", dealer_registered_date);


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();
        }
    }
}