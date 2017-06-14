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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
            cbIDTool.AutoPostBack = true;
            cbIDEmp.AutoPostBack = true;
            cbName.AutoPostBack = true;
            cbDescription.AutoPostBack = true;
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (txtIDEmp.Text == "" || txtIDTool.Text == "" || txtDate.Text == "")
            {
                lbStatus.Text = "Please Input All Data";
                lbStatus.ForeColor = System.Drawing.Color.Red;
                lbDate.Text = "*";
                lbIDEmp.Text = "*";
                lbIDTool.Text = "*";
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P8LED4T\SQLEXPRESS;Initial Catalog=Borrow;Integrated Security=True;
                    Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlDataAdapter CheckEmp = new SqlDataAdapter("Select Count(*) From Employee where IDEmp= '" + txtIDEmp.Text + "'", con);
                DataTable dtEmp = new DataTable();
                CheckEmp.Fill(dtEmp);

                SqlDataAdapter CheckTool = new SqlDataAdapter("Select Count(*) From Tool where IDTool= '" + txtIDTool.Text + "'", con);
                    DataTable dtTool = new DataTable();
                    CheckTool.Fill(dtTool);

                    if (dtEmp.Rows[0][0].ToString() == "1" && dtTool.Rows[0][0].ToString() == "1")
                    {
                        dbBorrowDataContext QueryDB = new dbBorrowDataContext();
                        Borrow InsertData = new Borrow();
                        InsertData.Detail = txtDetail.Text;

                        double idtool;
                        idtool = Convert.ToDouble(txtIDTool.Text);
                        idtool = double.Parse(txtIDTool.Text);
                        InsertData.IDTool = idtool;

                        var descriptionTool = from tableTool in QueryDB.Tool123s
                                              where txtIDTool.Text.Equals(tableTool.IDTool)
                                              select tableTool.Description;
                        string Description = "";
                        foreach (var a in descriptionTool)
                        {
                            Description = a.ToString();
                        }
                        InsertData.Description = Description;

                        double idemp;
                        idemp = Convert.ToDouble(txtIDEmp.Text);
                        idemp = double.Parse(txtIDEmp.Text);
                        InsertData.IDEmp = idemp;

                        var EmpName = from tableEmployee in QueryDB.Employee123s
                                      where txtIDEmp.Text.Equals(tableEmployee.IDEmp)
                                      select tableEmployee.Name;
                        string Name = "";
                        foreach (var a in EmpName)
                        {
                            Name = a.ToString();
                        }
                        InsertData.Name = Name;

                        var Department = from tableEmployee in QueryDB.Employee123s
                                         where txtIDEmp.Text.Equals(tableEmployee.IDEmp)
                                         select tableEmployee.Department;
                        string Depart = "";
                        foreach (var a in Department)
                        {
                            Depart = a.ToString();
                        }
                        InsertData.Department = Depart;

                        DateTime dt = Convert.ToDateTime(txtDate.Text);
                        InsertData.DateBorrow = dt;
                        InsertData.Amount = txtAmount.Text;
                        InsertData.Detail = txtDetail.Text;

                        QueryDB.Borrows.InsertOnSubmit(InsertData);
                        QueryDB.SubmitChanges();
                        lbStatus.ForeColor = System.Drawing.Color.Green;
                        lbStatus.Text = "Saved Successed.";
                        gvShow.DataBind();

                        txtAmount.Text = "";
                        txtDate.Text = "";
                        txtDetail.Text = "";
                        txtIDEmp.Text = "";
                        txtIDTool.Text = "";
                    }//if
                    else
                    {
                        lbStatus.Text = "Not Found ID Employee or Tool";
                        lbStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }///try
                catch
                {
                    lbStatus.Text = "Input Data Error!!";
                    lbStatus.ForeColor = System.Drawing.Color.Red;
                }
            }//else
        }

        protected void btnReset_Click(object sender, ImageClickEventArgs e)
        {
            Session["ViewState"] = null;
            Response.Redirect("~/ContentPage/Home.aspx");
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (cbIDTool.Checked == true)
            {
                gvIDTool.Visible = true;
                gvShow.Visible = false;
                gvDescription.Visible = false;
                gvIDEmp.Visible = false;
                gvName.Visible = false;
            }
            else if (cbDescription.Checked == true)
            {
                gvDescription.Visible = true;
                gvIDTool.Visible = false;
                gvShow.Visible = false;
                gvIDEmp.Visible = false;
                gvName.Visible = false;
            }
            else if (cbIDEmp.Checked == true)
            {
                gvIDEmp.Visible = true;
                gvIDTool.Visible = false;
                gvShow.Visible = false;
                gvDescription.Visible = false;
                gvName.Visible = false;
            }
            else if (cbName.Checked == true)
            {
                gvName.Visible = true;
                gvIDEmp.Visible = false;
                gvIDTool.Visible = false;
                gvShow.Visible = false;
                gvDescription.Visible = false;
            }
        }//btnSearch
        protected void cbIDTool_CheckedChanged(object sender, EventArgs e)
        {
            if (cbIDTool.Checked == true)
            {
                txtSearchIDTool.Enabled = true;
            }
            else
            {
                txtSearchIDTool.Enabled = false;
                txtSearchIDTool.Text = "";
            }
        }

        protected void cbDescription_CheckedChanged(object sender, EventArgs e)
        {
            if (cbDescription.Checked == true)
            {
                txtSearDesc.Enabled = true;
            }
            else
            {
                txtSearDesc.Enabled = false;
                txtSearDesc.Text = "";
            }
        }

        protected void cbIDEmp_CheckedChanged(object sender, EventArgs e)
        {
            if (cbIDEmp.Checked == true)
            {
                txtSearchIDEmp.Enabled = true;
            }
            else
            {
                txtSearchIDEmp.Enabled = false;
                txtSearchIDEmp.Text = "";
            }
        }

        protected void cbName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbName.Checked == true)
            {
                txtSearchName.Enabled = true;
            }
            else
            {
                txtSearchName.Enabled = false;
                txtSearchName.Text = "";
            }
        }
    }
}