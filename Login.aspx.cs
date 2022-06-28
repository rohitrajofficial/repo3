using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data;

namespace LoginApp
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        public void btnLogin_Click(object sender, EventArgs e)
        {
            
            Session["name"] = txtName.Text;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IDECGHJ;Initial Catalog=Office;Integrated Security=SSPI;");
            SqlCommand cmd = new SqlCommand("select * from tblLogin where Name=@Name and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
               
                MessageBox.Show("Your username or password is incorrect..");

            }
           
        }
    }
}