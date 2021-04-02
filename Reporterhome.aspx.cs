using System;
namespace Speakoutsign
{
    public partial class Reporter_Reporterhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {
                    if (Session["r_name"] == null)
                    {
                        Response.Redirect("~/Common/Login.aspx");
                    }
                }
            }
        }
    }
}