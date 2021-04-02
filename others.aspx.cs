using System;
using System.Web.UI.WebControls;
namespace Speakoutsign
{
    public partial class Users_Categories_others : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "readmore")
            {
                Response.Redirect("~/Users/open.aspx?id=" + e.CommandArgument.ToString());
            }
        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }
    }
}