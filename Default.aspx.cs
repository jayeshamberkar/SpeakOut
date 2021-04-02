using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Speakoutsign
{
    public partial class Users_Default : System.Web.UI.Page
    {

        int no, counter;
        SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_name"] != null)
            {
                Label1.Text = "Logged in as " + Session["u_name"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label1.Text = "Hello you can login here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
            if(DataList1.Items.Count == 0)
            {
                DataList1.Visible = false;
                message.Visible = true;
                message.Text = "No news found";


            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            SqlDataAdapter sda = new SqlDataAdapter("Select * from news where (n_title like '%" + TextBox1.Text + "%') or (n_category like '%" + TextBox1.Text + "%') or (n_location like '%" + TextBox1.Text + "%') or (n_langauge like '%" + TextBox1.Text + "%')", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
           
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            if (DataList1.Items.Count == 0)
            {
                DataList1.Visible = false;
                message.Visible = true;
                message.Text = "No news found";

            }
            
            
                DataList1.DataBind();
            

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "readmore")
            {
                Response.Redirect("open.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }



        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
