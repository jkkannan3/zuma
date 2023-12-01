using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Zuma
{
    public partial class Signup : System.Web.UI.Page
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
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_signup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter param1 = new SqlParameter("@name", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = name.Text;

                SqlParameter param2 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = email.Text;


                SqlParameter param3 = new SqlParameter("@uname", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = username.Text;

                SqlParameter param4 = new SqlParameter("@pwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param4).Value = password.Text;

                SqlParameter param5 = new SqlParameter("@cpwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param5).Value = confirmpassword.Text;

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Data cannot be inserted');</script>");

                }
                con.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }


    }
}