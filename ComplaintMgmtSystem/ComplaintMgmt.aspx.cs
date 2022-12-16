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
    public partial class ComplaintMgmt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update ComplaintTable set RequiredMaterial='" + txtMaterial.Text + "', Status='" + txtStatus.Text + "' where ComplaintId='" + txtComplaintID.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            txtComplaintID.Text = "";
            txtMaterial.Text = "";
            txtStatus.Text = "";
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminSignIn.aspx");
        }
    }
}