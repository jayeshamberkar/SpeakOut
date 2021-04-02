using System;
using System.Data.SqlClient;
using System.Web.UI;
namespace Speakoutsign
{
    public partial class Reporter_Addnewsreporter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["r_name"] == null)
                {
                    Response.Redirect("~/Common/Login.aspx");
                }
                Calendar1.Visible = false;
            }
        }
        private void cleartxtbox()
        {
            txtTitle.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtDate.Text = string.Empty;
            txtLanguage.Text = string.Empty;
            txtLocation.Text = string.Empty;
            txtCategory.Text = string.Empty;
            //filepath = string.Empty;

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = (Calendar1.SelectedDate.ToShortDateString()).ToString();
            Calendar1.Visible = false;
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
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
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                if (imgUpload.HasFile)
                {

                    string filename = imgUpload.PostedFile.FileName;
                    string filepath = "~/iocns/news/" + imgUpload.FileName;
                    imgUpload.PostedFile.SaveAs(Server.MapPath("~/iocns/news/") + filename);
                    String query = "insert into news (n_title, n_desc, n_date, n_location,n_category,n_langauge,n_photo,n_likes,r_id ) values (@n_title, @n_desc, @n_date, @n_location,@n_category,@n_language,@n_photo,@n_likes,@r_id)";


                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("n_title", txtTitle.Text);
                    cmd.Parameters.AddWithValue("n_desc", txtDesc.Text);
                    cmd.Parameters.AddWithValue("n_date", txtDate.Text);
                    cmd.Parameters.AddWithValue("n_location", txtLocation.Text);
                    cmd.Parameters.AddWithValue("n_category", txtCategory.Text);
                    cmd.Parameters.AddWithValue("n_language", txtLanguage.Text);
                    cmd.Parameters.AddWithValue("n_photo", filepath);
                    cmd.Parameters.AddWithValue("n_likes", 0);
                    cmd.Parameters.AddWithValue("r_id", rid);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    cleartxtbox();
                    Label1.Text = "News Added";
                }
            }
        }


    }
}