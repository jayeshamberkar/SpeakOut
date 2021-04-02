using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;
namespace Speakoutsign
{
    public partial class Reporter_Templatenews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Session["r_name"] == null)
                {
                    Response.Redirect("~/Common/Login.aspx");
                }
                ShowGrid();
            }
        }
        public void ShowGrid()
        {
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from t_news", conn);
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
            int tid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlCommand cmd = new SqlCommand("Delete from t_news where t_id = @1", conn);
            cmd.Parameters.AddWithValue("@1", tid);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }


        protected void Download_Click(object sender, EventArgs e)
        {
            string filepath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + Path.GetFileName(filepath));
            Response.WriteFile(filepath);
            Response.End();
        }
    }
}