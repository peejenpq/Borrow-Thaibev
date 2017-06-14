using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BorrowAutomation
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ContentPage/Home.aspx");
        }

        protected void btnReport_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ContentPage/Report.aspx");
        }

        protected void btnEmployee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ContentPage/Employee.aspx");
        }

        protected void btnTools_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ContentPage/Tools.aspx");
        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}