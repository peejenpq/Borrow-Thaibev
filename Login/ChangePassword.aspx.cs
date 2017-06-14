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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
            lbUser.Visible = false;
            lbConfirm.Visible = false;
            lbNewPassword.Visible = false;
            lbOldPassword.Visible = false;
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Borrow;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter UserName = new SqlDataAdapter("Select UserName From Login Where Username = '" + txtUser.Text + "'", con);
            SqlDataAdapter Password = new SqlDataAdapter("Select Password From Login Where Password = '" + txtOldPass.Text + "'", con);
            DataTable dtUser = new DataTable();
            DataTable dtPass = new DataTable();
            UserName.Fill(dtUser);
            Password.Fill(dtPass);
            if (txtOldPass.Text == "" || txtNewPass.Text == "" || txtConfirm.Text == "" || txtUser.Text == "")
            {
                lbStatus.ForeColor = System.Drawing.Color.Red;
                lbStatus.Text = "**Please Input All Data";
                lbUser.Visible = true;
                lbOldPassword.Visible = true;
                lbNewPassword.Visible = true;
                lbConfirm.Visible = true;
            }
            else
            {
                if (dtUser.Rows.Count.ToString() == "1")
                {
                    if (dtPass.Rows.Count.ToString() != "0")
                    {
                        if (txtNewPass.Text == txtConfirm.Text)
                        {
                            con.Open();
                            SqlCommand cmd = new SqlCommand("Update Login set Password = '" + txtConfirm.Text + "' Where UserName = '" + txtUser.Text + "' ", con);
                            cmd.ExecuteNonQuery();
                            con.Close();

                            lbStatus.ForeColor = System.Drawing.Color.Green;
                            lbStatus.Text = "Change Password Successfully!!";
                            txtConfirm.Text = "";
                            txtNewPass.Text = "";
                            txtOldPass.Text = "";
                        }
                        else
                        {
                            lbStatus.ForeColor = System.Drawing.Color.Red;
                            lbStatus.Text = "**Password Not Match";
                            lbNewPassword.Visible = true;
                            lbConfirm.Visible = true;
                        }
                    }
                    else
                    {
                        lbStatus.ForeColor = System.Drawing.Color.Red;
                        lbStatus.Text = "!!Old Password Not Match";
                        lbOldPassword.Visible = true;

                    }
                }
                else
                {
                    lbStatus.ForeColor = System.Drawing.Color.Red;
                    lbStatus.Text = "**Not Found UserName";
                    lbUser.Visible = true;
                }
            }
        }//btnSave

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}