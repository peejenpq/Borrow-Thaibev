using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BorrowAutomation.ContentPage.ReportContent
{
    public partial class CheckTools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hplCheckTools.ForeColor = System.Drawing.Color.Blue;
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
        }
        protected void btnExportStatus_Click(object sender, ImageClickEventArgs e)
        {
            if (gvShow.Visible == true)
            {
                Response.Clear();
                Response.AddHeader("content-disposition", "attachment;filename=CheckTools.xls");
                Response.ContentType = "application/vnd.xls";
                StringWriter swStatus = new StringWriter();
                HtmlTextWriter htwStatus = new HtmlTextWriter(swStatus);
                gvShow.DataBind();
                gvShow.RenderControl(htwStatus);
                Response.Write(swStatus.ToString());
                Response.End();
            }
            else
            {
                Response.Clear();
                Response.AddHeader("content-disposition", "attachment;filename=CheckTools.xls");
                Response.ContentType = "application/vnd.xls";
                StringWriter swStatus1 = new StringWriter();
                HtmlTextWriter htwStatus1 = new HtmlTextWriter(swStatus1);
                gvCheck.DataBind();
                gvCheck.RenderControl(htwStatus1);
                Response.Write(swStatus1.ToString());
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void btnCheckTools_Click(object sender, ImageClickEventArgs e)
        {
            gvShow.Visible = false;
            gvCheck.Visible = true;
        }
    }
}