using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

namespace BorrowAutomation.ContentPage
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "window.onload= function(){window.history.forward(-1); }", true);
            hplSumarize.ForeColor = System.Drawing.Color.Blue;
        }

        protected void btnExport_Click(object sender, ImageClickEventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=Report.xls");
            Response.ContentType = "application/vnd.xls";
            StringWriter swBorrow = new StringWriter();
            HtmlTextWriter htwBorrow = new HtmlTextWriter(swBorrow);
            gvHistory.DataBind();
            gvHistory.RenderControl(htwBorrow);
            Response.Write(swBorrow.ToString());
            Response.End();
        }
        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            gvHistory.Visible = true;
            gvNotReturn.Visible = false;
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void btnSearch1_Click(object sender, ImageClickEventArgs e)
        {
            gvHistory.Visible = false;
            gvNotReturn.Visible = true;
        }

        protected void btnExport1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=NotReturn.xls");
            Response.ContentType = "application/vnd.xls";
            StringWriter swNotReturn1 = new StringWriter();
            HtmlTextWriter htwNotReturn1 = new HtmlTextWriter(swNotReturn1);
            gvNotReturn.DataBind();
            gvNotReturn.RenderControl(htwNotReturn1);
            Response.Write(swNotReturn1.ToString());
            Response.End();
        }
    }
}