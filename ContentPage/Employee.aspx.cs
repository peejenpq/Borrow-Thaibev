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
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
            cbIDEmp.AutoPostBack = true;
            cbName.AutoPostBack = true;
            cbDepart.AutoPostBack = true;
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (cbIDEmp.Checked == true)
            {
                gvIDEmp.Visible = true;
                gvShow.Visible = false;
                gvName.Visible = false;
                gvDepart.Visible = false;
            }
            else if (cbName.Checked == true)
            {
                gvIDEmp.Visible = false;
                gvShow.Visible = false;
                gvName.Visible = true;
                gvDepart.Visible = false;
            }
            else if (cbDepart.Checked == true)
            {
                gvIDEmp.Visible = false;
                gvShow.Visible = false;
                gvName.Visible = false;
                gvDepart.Visible = true;
            }
        }

        protected void cbIDEmp_CheckedChanged(object sender, EventArgs e)
        {
            if (cbIDEmp.Checked == true)
            {
                tbSearID.Enabled = true;
            }
            else
            {
                tbSearID.Enabled = false;
                tbSearID.Text = "";
            }
        }

        protected void cbName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbName.Checked == true)
            {
                tbSearName.Enabled = true;
            }
            else
            {
                tbSearName.Enabled = false;
                tbSearName.Text = "";
            }
        }

        protected void cbDepart_CheckedChanged(object sender, EventArgs e)
        {
            if (cbDepart.Checked == true)
            {
                tbSeaDepart.Enabled = true;
            }
            else
            {
                tbSeaDepart.Enabled = false;
                tbSeaDepart.Text = "";
            }
        }

        protected void btnReset_Click(object sender, ImageClickEventArgs e)
        {
            Session["ViewState"] = null;
            Response.Redirect("~/ContentPage/Employee.aspx");
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (tbIDEmp.Text == "" || tbName.Text == "" || tbDepartment.Text == "")
            {
                lbStatus.ForeColor = System.Drawing.Color.Red;
                lbStatus.Text = "Input All Data!!";

            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P8LED4T\SQLEXPRESS;Initial Catalog=Borrow;Integrated Security=True;
                    Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlDataAdapter SearchIDEmp = new SqlDataAdapter("Select Count (*) From Employee Where IDEmp='" + tbIDEmp.Text + "'", con);
                DataTable dt = new DataTable();
                SearchIDEmp.Fill(dt);

                if (dt.Rows[0][0].ToString() == "1")
                {
                    lbStatus.ForeColor = System.Drawing.Color.Red;
                    lbStatus.Text = "This ID is Already";
                }
                else
                {
                    try
                    {
                        dbBorrowDataContext QueryDB = new dbBorrowDataContext();
                        Employee123 InsertData = new Employee123();
                        double idemp = Convert.ToDouble(tbIDEmp.Text);
                        InsertData.IDEmp = idemp;
                        InsertData.Name = tbName.Text;
                        InsertData.Department = tbDepartment.Text;
                        

                        QueryDB.Employee123s.InsertOnSubmit(InsertData);
                        QueryDB.SubmitChanges();
                        gvShow.DataBind();
                        lbStatus.ForeColor = System.Drawing.Color.Green;
                        lbStatus.Text = "Saved Successed!!";
                        tbDepartment.Text = "";
                        tbIDEmp.Text = "";
                        tbName.Text = "";
                    }
                    catch
                    {
                        lbStatus.Text = "Input Data Error!!";
                        lbStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}