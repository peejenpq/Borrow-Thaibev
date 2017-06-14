using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BorrowAutomation.ContentPage
{
    public partial class Tool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
            cbDescrip.AutoPostBack = true;
            cbIDTools.AutoPostBack = true;
        }

        protected void btnReset_Click(object sender, ImageClickEventArgs e)
        {
            Session["ViewState"] = null;
            Response.Redirect("~/ContentPage/Tools.aspx");
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P8LED4T\SQLEXPRESS;Initial Catalog=Borrow;Integrated Security=True;
                    Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Tool where IDTool= '" + tbIDTool.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                lbStatus.ForeColor = System.Drawing.Color.Red;
                lbStatus.Text = "This ID is Already";
            }
            else
            {
                if (tbIDTool.Text == "" || tbNameTool.Text == "")
                {
                    lbStatus.ForeColor = System.Drawing.Color.Red;
                    lbStatus.Text = "Input All Data";
                }
                else
                {
                    try
                    {
                        dbBorrowDataContext QueryDB = new dbBorrowDataContext();
                        Tool123 InsertData = new Tool123();

                        double idTool = Convert.ToDouble(tbIDTool.Text);
                        InsertData.IDTool = idTool;
                        InsertData.Description = tbNameTool.Text;
                        QueryDB.Tool123s.InsertOnSubmit(InsertData);
                        QueryDB.SubmitChanges();

                        lbStatus.ForeColor = System.Drawing.Color.Green;
                        lbStatus.Text = "Added Tool Successed!";
                    }
                    catch
                    {
                        lbStatus.ForeColor = System.Drawing.Color.Red;
                        lbStatus.Text = "Input Data Error!";
                    }
                }
            }
        }

        protected void cbIDTools_CheckedChanged(object sender, EventArgs e)
        {
            if (cbIDTools.Checked == true)
            {
                tbIDTool1.Enabled = true;
            }
            else
            {
                tbIDTool1.Enabled = false;
                tbIDTool1.Text = "";
            }
        }

        protected void cbDecsrip_CheckedChanged(object sender, EventArgs e)
        {
            if (cbDescrip.Checked == true)
            {
                tbNameTool1.Enabled = true;
            }
            else
            {
                tbNameTool1.Enabled = false;
                tbNameTool1.Text = "";
            }
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (cbIDTools.Checked == true)
            {
                gvSearchID.Visible = true;
                gvShow.Visible = false;
                gvSearchName.Visible = false;
            }
            else if (cbDescrip.Checked == true)
            {
                gvSearchID.Visible = false;
                gvShow.Visible = false;
                gvSearchName.Visible = true;
            }

        }
    }
}