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

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        public void button_click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string command = "INSERT INTO [tbs].[userlogin]([username], [passwordkey]) VALUES(@username, @password)";
                SqlCommand cmd = new SqlCommand(command, conn);
                cmd.Parameters.AddWithValue("@username", TUID.Text);
                cmd.Parameters.AddWithValue("@password", TPW.Text);
                cmd.ExecuteNonQuery();
                Label1.Text = "Data Saved";
                conn.Close();
                Response.Redirect("Details.aspx");
            }
            catch (SqlException ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}
