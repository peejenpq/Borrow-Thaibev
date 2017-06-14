using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BorrowAutomation.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbStatus.Visible = false;
            txtUser.Focus();
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Borrow;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter sda = new SqlDataAdapter("Select Count (*) From Login Where UserName='" + txtUser.Text + "' and Password = '" + txtPassword.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("~/ContentPage/Home.aspx");
            }
            else
            {
                if (txtUser.Text == "" || txtPassword.Text == "")
                {
                    lbStatus.Text = "Please Input User and Password!!!";
                    lbStatus.Visible = true;
                }
                else
                {
                    lbStatus.Text = "Username or Password is wrong!!!";
                    lbStatus.Visible = true;
                }

            }
        }

        protected void btnChangePass_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Login/ChangePassword.aspx");
        }
    }
}