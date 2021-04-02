using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Speakoutsign
{
    public partial class Admin_Uers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["a_name"] == null)
                {
                    Response.Redirect("~/Common/Login.aspx");
                }
                ShowGrid();
            }
        }
        public void ShowGrid()
        {
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from users", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowGrid();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int uid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlCommand cmd = new SqlCommand("Delete from users where u_id=@1", conn);
            cmd.Parameters.AddWithValue("@1", uid);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }
    }
}