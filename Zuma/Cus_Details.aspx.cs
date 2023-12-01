using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;


namespace Zuma
{
    public partial class Cus_Details : System.Web.UI.Page
    {
        static string connection = System.Configuration.ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        SqlConnection con = new SqlConnection(connection);
        protected void Page_Load(object sender, EventArgs e)
        {
            getdata();
        }
        private void getdata()
        {

            SqlCommand cmd = new SqlCommand("sp_fetchdata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();        
            Gv.DataSource = cmd.ExecuteReader();
            Gv.DataBind();
            con.Close();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("sp_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter param1 = new SqlParameter("@name", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_name.Text;

                SqlParameter param2 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_email.Text;

                SqlParameter param3 = new SqlParameter("@uname", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_username.Text;

                SqlParameter param4 = new SqlParameter("@pwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param4).Value = txt_password.Text;

                SqlParameter param5 = new SqlParameter("@cpwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param5).Value = txt_conpassword.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                getdata();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
         
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("sp_update", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter param1 = new SqlParameter("@name", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_name.Text;

                SqlParameter param2 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_email.Text;

                SqlParameter param3 = new SqlParameter("@uname", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_username.Text;

                SqlParameter param4 = new SqlParameter("@pwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param4).Value = txt_password.Text;

                SqlParameter param5 = new SqlParameter("@cpwd", SqlDbType.VarChar);
                cmd.Parameters.Add(param5).Value = txt_conpassword.Text;

                SqlParameter param6 = new SqlParameter("@id", SqlDbType.VarChar);
                cmd.Parameters.Add(param6).Value = id.Text;

                cmd.ExecuteNonQuery();
                con.Close();
                getdata();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btnSrh_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_searchdata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@pattern", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = id.Text; 
                Gv.DataSource = cmd.ExecuteReader();
                Gv.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                txt_name.Text ="";
                txt_email.Text ="";
                txt_username.Text = "";
                txt_password.Text = "";
                txt_conpassword.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
        protected void Gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(Gv.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("sp_delete", con);
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