 using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zuma
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {

                string connection = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
                SqlConnection con = new SqlConnection(connection);
                if (username.Text == "admin" && password.Text == "12345678")
                {
                    Response.Redirect("Cus_Details.aspx");
                }
                else
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("sp_login", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter param1 = new SqlParameter("@uname", SqlDbType.VarChar);
                    cmd.Parameters.Add(param1).Value = username.Text;

                    SqlParameter param2 = new SqlParameter("@pwd", SqlDbType.VarChar);
                    cmd.Parameters.Add(param2).Value = password.Text;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds); ;
                    int a = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                    if (a > 0)
                    {
                        Response.Write("<script>alert('Valid user');</script>");
                        Response.Redirect("Menu.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('InValid user');</script>");
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}