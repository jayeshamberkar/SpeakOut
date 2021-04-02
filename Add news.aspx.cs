using System;
using System.Data.SqlClient;
using System.Web.UI;
namespace Speakoutsign
{
    public partial class Users_Add_news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["u_name"] == null)
                {
                    Response.Redirect("~/Common/Login.aspx");
                }

            }

        }
        private void cleartxtbox()
        {
            txtTitle.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtDate.Text = string.Empty;
            txtLanguage.Text = string.Empty;
            txtLocation.Text = string.Empty;
           

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
            int uid;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {

                String query1 = "Select u_id from users where u_name= @u_name";
                SqlCommand cmd1 = new SqlCommand(query1, conn);
                cmd1.Parameters.AddWithValue("u_name", Session["u_name"]);
                conn.Open();
                uid = (int)cmd1.ExecuteScalar();
                conn.Close();
            }
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                if (imgUpload.HasFile)
                {

                    string filename = imgUpload.PostedFile.FileName;
                    string filepath = "~/iocns/t_newsimg/" + imgUpload.FileName;
                    imgUpload.PostedFile.SaveAs(Server.MapPath("~/iocns/t_newsimg/") + filename);
                    String query = "insert into t_news (t_title, t_desc, t_date, t_location,t_category,t_language,t_photo,u_id ) values (@t_title, @t_desc, @t_date, @t_location,@t_category,@t_language,@t_photo,@u_id)";


                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("t_title", txtTitle.Text);
                    cmd.Parameters.AddWithValue("t_desc", txtDesc.Text);
                    cmd.Parameters.AddWithValue("t_date", txtDate.Text);
                    cmd.Parameters.AddWithValue("t_location", txtLocation.Text);
                    cmd.Parameters.AddWithValue("t_category", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("t_language", txtLanguage.Text);
                    cmd.Parameters.AddWithValue("t_photo", filepath);
                    cmd.Parameters.AddWithValue("u_id", uid);
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