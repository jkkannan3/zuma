using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;


namespace Zuma
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        static string connection = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        SqlConnection con = new SqlConnection(connection);
        protected void Page_Load(object sender, EventArgs e)
        {
            getdata();

        }    
        private void getdata()
        {

            SqlCommand cmd = new SqlCommand("fb_fetch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            Gv2.DataSource = cmd.ExecuteReader();
            Gv2.DataBind();
            con.Close();
        }

        protected void Gv2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(Gv2.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("fb_delete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter param1 = new SqlParameter("@id", SqlDbType.Int);
            cmd.Parameters.Add(param1).Value = id;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            getdata();
        }
    }
}