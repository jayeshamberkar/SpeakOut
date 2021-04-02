using System;
using System.Web.UI;
namespace Speakoutsign
{
    public partial class Reporter_ReporterMaster : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["r_name"] == null)
                {

                    Response.Redirect("~/Common/Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.CssClass = "buttonColor";
            Button1.Style.Add(HtmlTextWriterStyle.Color, "green");
            Response.Redirect("Addnewsreporter.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Mynews.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Templatenews.aspx");
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
           
            Session.Abandon();
            Response.Redirect("~/Common/Login.aspx");
        }
    }
}

