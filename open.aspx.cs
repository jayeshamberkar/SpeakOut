using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace Speakoutsign
{
    public partial class Users_open : System.Web.UI.Page
    {
        int ni = 0;
        int uid = 0;
        
        //int nid = Convert.ToInt32(Request.QueryString["id"]);
        protected void Page_Load(object sender, EventArgs e)
        {
           
                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {
                    int nid = Convert.ToInt32(Request.QueryString["id"]), total = 0;
                    //int a = 0;
                    String query1 = "Select n_likes from news where n_id= @n_id";
                    SqlCommand cmd1 = new SqlCommand(query1, conn);
                    cmd1.Parameters.AddWithValue("n_id", nid);
                    conn.Open();
                    total = (int)cmd1.ExecuteScalar();
                    conn.Close();
                    Label4.Text = total.ToString();
                    ni = nid;
                  }
           
            if(Session["u_name"] != null)
            {
               
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {

                        String query1 = "Select u_id from users where u_name= @u_name";
                        SqlCommand cmd1 = new SqlCommand(query1, conn);
                        cmd1.Parameters.AddWithValue("u_name", Session["u_name"].ToString());
                        conn.Open();
                        uid = (int)cmd1.ExecuteScalar();
                        conn.Close();
                    }
                    int count = 0;
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {
                        String query = "select count(*) from likes where (u_id = @u_id and n_id=@n_id)";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("u_id", uid);
                        cmd.Parameters.AddWithValue("n_id", ni);
                        conn.Open();
                        count = (int)cmd.ExecuteScalar();
                        conn.Close();
                    }
                    if (count == 0)
                    {
                        ImageButton1.Enabled = true;
                        ImageButton2.Enabled = false;
                    }
                    else if (count > 0)
                    {
                        ImageButton1.Enabled = false;
                        ImageButton2.Enabled = true;

                    }
                }
            
            ShowGrid();
            
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            
                if (Session["u_name"] != null)
                {
                    int a = 0, b = 0;

                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {

                        String query1 = "Select n_likes from news where n_id= @n_id";
                        SqlCommand cmd1 = new SqlCommand(query1, conn);
                        cmd1.Parameters.AddWithValue("n_id", ni);
                        conn.Open();
                        a = (int)cmd1.ExecuteScalar();
                        conn.Close();
                    }
                    b = a + 1;
                   

                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {

                        String query1 = "Select u_id from users where u_name= @u_name";
                        SqlCommand cmd1 = new SqlCommand(query1, conn);
                        cmd1.Parameters.AddWithValue("u_name", Session["u_name"].ToString());
                        conn.Open();
                        uid = (int)cmd1.ExecuteScalar();
                        conn.Close();
                    }
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {
                        String query = "insert into likes (l_no, u_id, n_id) values (@l_no, @u_id, @n_id) ";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("l_no", 1);
                        cmd.Parameters.AddWithValue("u_id", uid);
                        cmd.Parameters.AddWithValue("n_id", ni);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {
                        String query2 = "update news set n_likes= @n_likes where n_id= @n_id";
                        SqlCommand cmd2 = new SqlCommand(query2, conn);
                        cmd2.Parameters.Add(new SqlParameter("n_likes", b));
                        cmd2.Parameters.Add(new SqlParameter("n_id", ni));
                        conn.Open();
                        cmd2.ExecuteNonQuery();
                        conn.Close();
                        Label4.Text = b.ToString();
                        ImageButton1.Enabled = false;
                        ImageButton2.Enabled = true;
                    }
                
                }
                else
                {
                    Response.Redirect("~/Common/Login.aspx");
                }

            
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
                if (Session["u_name"] != null)
                {
                    int a = 0, b = 0;

                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {

                        String query1 = "Select n_likes from news where n_id= @n_id";
                        SqlCommand cmd1 = new SqlCommand(query1, conn);
                        cmd1.Parameters.AddWithValue("n_id", ni);
                        conn.Open();
                        a = (int)cmd1.ExecuteScalar();
                        conn.Close();
                    }
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {

                        String query1 = "Select u_id from users where u_name= @u_name";
                        SqlCommand cmd1 = new SqlCommand(query1, conn);
                        cmd1.Parameters.AddWithValue("u_name", Session["u_name"].ToString());
                        conn.Open();
                        uid = (int)cmd1.ExecuteScalar();
                        conn.Close();
                    }
                    using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                    {
                        String query = "delete from likes where (u_id=@u_id and n_id=@n_id) ";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("u_id", uid);
                        cmd.Parameters.AddWithValue("n_id", ni);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    if (a == 0)
                    {
                        ImageButton2.Enabled = false;
                    }
                    else
                    {

                        b = a - 1;
                        using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                        {
                            String query2 = "update news set n_likes= @n_likes where n_id= @n_id";
                            SqlCommand cmd2 = new SqlCommand(query2, conn);
                            cmd2.Parameters.Add(new SqlParameter("n_likes", b));
                            cmd2.Parameters.Add(new SqlParameter("n_id", ni));
                            conn.Open();
                            cmd2.ExecuteNonQuery();
                            conn.Close();
                            Label4.Text = b.ToString();
                            ImageButton1.Enabled = true;
                            ImageButton2.Enabled = false;
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Common/Login.aspx");
                }
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Users/Default.aspx");
        }
        public void ShowGrid()
        {
            SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select users.u_name, comments.c_content from comments INNER JOIN users ON users.u_id=comments.u_id INNER JOIN news ON news.n_id=comments.n_id where comments.n_id= '" + ni + "'  ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            

            if (Session["u_name"] == null)
            {
                Response.Redirect("~/Common/Login.aspx");
            }

            else
            {
                

                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {

                    String query1 = "Select u_id from users where u_name= @u_name";
                    SqlCommand cmd1 = new SqlCommand(query1, conn);
                    cmd1.Parameters.AddWithValue("u_name", Session["u_name"].ToString());
                    conn.Open();
                    uid = (int)cmd1.ExecuteScalar();
                    conn.Close();
                }
                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {
                    String query = "insert into comments (c_content,n_id,u_id) values (@c_content,@n_id,@u_id)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("c_content", TextBox1.Text);
                    cmd.Parameters.AddWithValue("n_id", ni);
                    cmd.Parameters.AddWithValue("u_id", uid);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    TextBox1.Text = "";
                    ShowGrid();
                }

            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}