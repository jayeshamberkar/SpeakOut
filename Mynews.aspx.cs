using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace Speakoutsign
{
    public partial class Reporter_Mynews : System.Web.UI.Page
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
            int rid;

            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {

                String query1 = "Select r_id from reporters where r_name= @r_name";
                SqlCommand cmd1 = new SqlCommand(query1, conn);
                cmd1.Parameters.AddWithValue("r_name", Session["r_name"]);
                conn.Open();
                rid = (int)cmd1.ExecuteScalar();
                conn.Close();
            }
            SqlConnection con = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from news where r_id= @r_id", con);
            sda.SelectCommand.Parameters.AddWithValue("@r_id", rid);
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
            int nid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlCommand cmd = new SqlCommand("Delete from news where n_id=@1", conn);
            cmd.Parameters.AddWithValue("@1", nid);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        
    }
}