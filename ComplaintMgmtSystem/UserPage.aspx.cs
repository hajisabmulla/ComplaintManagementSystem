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
    public partial class UserPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["UserName"] == null)
                Response.Redirect("UserSignIn.aspx");
        }

        protected void btnSgnOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UserSignIn.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into ComplaintTable values('" + txtComplaintNo.Text + "','" + txtComplaintDate.Text + "','" + txtUserName.Text + "','" + txtHOD.Text + "','" + txtMachineSN.Text + "','" + txtBrProblem.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data inserted successfully";
            txtComplaintNo.Text = "";
            txtComplaintDate.Text = "";
            txtUserName.Text = "";
            txtHOD.Text = "";
            txtMachineSN.Text = "";
            txtBrProblem.Text = "";
        }
    }
}