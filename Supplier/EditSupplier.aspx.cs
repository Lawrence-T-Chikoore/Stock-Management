using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Stock_Management.Supplier
{
    public partial class EditSupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                //Request.QueryString["dealerID"] = "0";
                if (Request.QueryString["dealerid"] != null ) 
                {
                    string id = Request.QueryString["dealerid"].ToString();
                    Get_Dealer_With_ID(id);
                }
                else
                {
                    Reset();
                    
                }
            
        }
         public void Get_Dealer_With_ID(string Id)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Dealers WHERE dealerid LIKE @dealerid +'%'", conn);
            cmd.Parameters.AddWithValue("@dealerid", txt_dealer_id.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count > 0)
            {
                txt_dealer_id.Text = ds.Rows[0]["dealerid"].ToString();
                txt_dealer_name.Text = ds.Rows[0]["dealername"].ToString();
                daddress.Text = ds.Rows[0]["dealeraddress"].ToString();
                dlandline.Text = ds.Rows[0]["dealerlandline"].ToString();
                dtelephone.Text = ds.Rows[0]["dealertel"].ToString();
                Btn_Update_Dealer.Visible = true;
                Btn_Reset.Visible = true;
                
            }

        }

        public void TextBoxReadOnlyTrue()
        {
            txt_dealer_name.ReadOnly = true;
            daddress.ReadOnly = true;
            dlandline.ReadOnly = true;
            dtelephone.ReadOnly = true;
          
            ReadOnlyColorChange();
        }
        public void TextBoxReadOnlyFalse()
        {
            txt_dealer_name.ReadOnly = false;
            daddress.ReadOnly = false;
            dlandline.ReadOnly = false;
            dtelephone.ReadOnly = false;
            ReadOnlyColorChange();
        }

        public void ReadOnlyColorChange()
        {
            txt_dealer_name.Style.Add("background", "#fafafa");
            daddress.Style.Add("background", "#fafafa");
            dlandline.Style.Add("background", "#fafafa");
            dtelephone.Style.Add("background", "#fafafa");
           
        }

        public void ReadOnlyColorWhite()
        {
            txt_dealer_name.Style.Add("background", "#ffffff");
            daddress.Style.Add("background", "#ffffff");
            dlandline.Style.Add("background", "#ffffff");
            dtelephone.Style.Add("background", "#ffffff");
           
        }

        protected void Btn_Get_Details_Click(object sender, EventArgs e)
        {
            Get_Dealer_With_ID(txt_dealer_id.Text.Trim());
            TextBoxReadOnlyFalse();
            ReadOnlyColorWhite();
        }

        protected void Btn_Reset_Click(object sender, EventArgs e)
        {
            Reset();
        }

        public void Reset()
        {
            ClearData();
            txt_dealer_id.ReadOnly = false;
            txt_dealer_id.Attributes.Add("placeholder", "Please Enter Dealer ID");
            txt_dealer_id.Style.Add("background", "#ffffff");
            Btn_Get_Details.Visible = true;
            Btn_Update_Dealer.Visible = false;
            Btn_Reset.Visible = false;
            TextBoxReadOnlyTrue();
        }
        public void ClearData()
        {
            txt_dealer_id.Text = "";
            txt_dealer_name.Text = "";
            daddress.Text = "";
            dlandline.Text = "";
            dtelephone.Text = "";
          
        }


        protected void Btn_Update_Dealer_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-L8I60LH\\KINGBELL;Initial Catalog=StockM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("insert into Dealers(dealerid,dealername,dealeraddress,dealerlandline,dealertel)values(@dealerid,@dealername,@dealeraddress,@dealerlandline,@dealertel)", conn);
            cmd.Parameters.AddWithValue("@dealerid", txt_dealer_id.Text.Trim());
            cmd.Parameters.AddWithValue("@dealername", txt_dealer_name.Text.Trim());
            cmd.Parameters.AddWithValue("@dealeraddress", daddress.Text.Trim());
            cmd.Parameters.AddWithValue("@dealerlandline", dlandline.Text.Trim());
            cmd.Parameters.AddWithValue("@dealertel", dtelephone.Text.Trim());
            


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();
        }
    }
}