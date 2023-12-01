using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Zuma
{
    public partial class Feedback : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("fb_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter param1 = new SqlParameter("@name", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_name.Text;

                SqlParameter param2 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_email.Text;

                SqlParameter param3 = new SqlParameter("@message", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_msg.InnerText;

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Feedback Submitted');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Your Feedback is not Submitted');</script>");

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