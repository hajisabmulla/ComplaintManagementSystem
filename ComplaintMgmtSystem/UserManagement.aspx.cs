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
    public partial class UserManagement : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into UserTable values('" + txtUserID.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDepartment.Text + "','" + txtContactNo.Text + "','" + txtEmailID.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data inserted successfully";
            GridView1.DataBind();
            txtUserID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDepartment.Text = "";
            txtContactNo.Text = "";
            txtEmailID.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update UserTable set FirstName='" + txtFirstName.Text + "', LastName='" + txtLastName.Text + "', Department='" + txtDepartment.Text + "', ContactNumber='" + txtContactNo.Text + "', EmailID='" + txtEmailID.Text + "', UserName='" + txtUserName.Text + "', Password='" + txtPassword.Text + "' where UserId='"+txtUserID.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Updated successfully";
            GridView1.DataBind();
            txtUserID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDepartment.Text = "";
            txtContactNo.Text = "";
            txtEmailID.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from UserTable where UserId = '" + Convert.ToInt32(txtUserID.Text).ToString() + "'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data deleted successfully";
            GridView1.DataBind();
            txtUserID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDepartment.Text = "";
            txtContactNo.Text = "";
            txtEmailID.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string find = "select * from UserTable where (UserId like '%' +@UserId+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = txtSearch.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "UserId");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
            Label1.Text = "Data has been selected";
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UserSignIn.aspx");
        }
    }
}