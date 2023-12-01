using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zuma
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    // Get the selected food item ID from the query string
                    int foodItemId = Convert.ToInt32(Request.QueryString["id"]);

                    // Retrieve the food item details from the database and populate the controls
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jkcon"].ConnectionString))
                    {
                        SqlCommand cmd = new SqlCommand("SELECT Name, Description, Price, Place FROM FoodItems WHERE ID = @ID", conn);
                        cmd.Parameters.AddWithValue("@ID", foodItemId);
                        conn.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            FoodName.Text = reader["Name"].ToString();
                            FoodDescription.Text = reader["Description"].ToString();
                            FoodPrice.Text = string.Format("{0:C}", reader["Price"]);
                            FoodImage.ImageUrl = reader["place"].ToString();
                        }
                        reader.Close();
                    }
                }
            }

            protected void btnAddToCart_Click(object sender, EventArgs e)
            {
                // Get the selected food item ID and quantity from the controls
                int foodItemId = Convert.ToInt32(Request.QueryString["id"]);
                int quantity = Convert.ToInt32(txtCount.Text);

            Response.Write("success");

                // Add the selected item and quantity to the cart
                // You can implement this part according to your specific requirements, such as adding the item and quantity to a session variable, a database table, or a shopping cart object.
            }
        }
    }

