using System;
using System.Data.SqlClient;
using System.Configuration;


namespace packbillproject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["packbil"].ConnectionString);



        public void insert_btn(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TUID.Text) || string.IsNullOrEmpty(TPW.Text))
            {
                Label1.Text = "Username or Password cannot be empty.";
                return;
            }

            string command = "INSERT INTO userlogin ([username], [passwordkey]) VALUES(@username, @password)";

           
                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    cmd.Parameters.AddWithValue("@username", TUID.Text);
                    cmd.Parameters.AddWithValue("@password", TPW.Text);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Label1.Text = "Data Saved";
                        conn.Close();
                        Response.Redirect("Detailsa.aspx");
                    }
                    catch (SqlException ex)
                    {
                        Label1.Text = "Error: " + ex.Message;
                    }
                }
            
        }
    }
}
