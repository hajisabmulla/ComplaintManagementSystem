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
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["UserName"] == null)
                Response.Redirect("AdminSignIn.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminSignIn.aspx");
        }
    }
}