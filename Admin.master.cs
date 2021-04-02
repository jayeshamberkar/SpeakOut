using System;
using System.Web.UI;
namespace Speakoutsign
{
    public partial class Admin_Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Button1.CssClass = "buttonColor";
            //Button1.Style.Add(HtmlTextWriterStyle.Color, "green");
            Response.Redirect("news.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.CssClass = "buttonColor";
            Button2.Style.Add(HtmlTextWriterStyle.Color, "green");
            Response.Redirect("Addreporter.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Reporters.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Uers.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();
            Response.Redirect("~/Common/Login.aspx");
        }
    }
}
