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
    public partial class AdminSignIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            lblErrorMessage.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "SELECT COUNT(1) FROM UserTable WHERE UserName=@UserName AND Password=@Password";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            sqlCmd.Parameters.AddWithValue("@UserName", txtSignInUserName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", txtSignInPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["UserName"] = txtSignInUserName.Text.Trim();
                Response.Redirect("AdminPage.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }
    }
}