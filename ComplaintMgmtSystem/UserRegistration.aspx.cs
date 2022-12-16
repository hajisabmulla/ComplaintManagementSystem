using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ComplaintMgmtSystem
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); 
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into UserTable values('" + txtUserID.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDepartment.Text + "','" + txtContactNo.Text + "','" + txtEmailID.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data inserted successfully";
            txtUserID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDepartment.Text = "";
            txtContactNo.Text = "";
            txtEmailID.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
        }
    }
}