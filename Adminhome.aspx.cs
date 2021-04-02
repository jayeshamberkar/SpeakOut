using System;
namespace Speakoutsign
{
    public partial class Admin_Adminhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["a_name"] == null)
                {
                    Response.Redirect("~/Common/Login.aspx");
                }
            }
        }
    }
}