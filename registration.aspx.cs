using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Stock_Management
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnregistration_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("insert into Admins(uname,fname,lastname,email,password)values(@uname,@aname,@lastname,@email,@password)", conn);
            cmd.Parameters.AddWithValue("@uname", txtfname.Text.Trim().Substring(0,1) + txtlname.Text.Trim());
            cmd.Parameters.AddWithValue("@aname", txtfname.Text.Trim());
            cmd.Parameters.AddWithValue("@lastname", txtlname.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}