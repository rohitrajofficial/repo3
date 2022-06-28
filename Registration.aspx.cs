using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace LoginApp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtPassword.Text==txtConfirmPassword.Text)
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IDECGHJ;Initial Catalog=Office;Integrated Security=SSPI;");
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into tblLogin values (@Name,@Password,@City,@Gender,@Mail)", con);
                    cmd.Parameters.AddWithValue("Name", txtName.Text);
                    cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("City", ddlCity.SelectedValue);
                    cmd.Parameters.AddWithValue("Gender", rblGender.SelectedValue);
                    cmd.Parameters.AddWithValue("Mail", txtEmail.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    txtName.Text = "";
                    txtPassword.Text = "";
                    txtEmail.Text = "";
                    ddlCity.Text = "";
                    rblGender.Text = "";
                    txtName.Focus();
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                MessageBox.Show("ERROR: Your password and confirmation password do not match.");
            }

           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}