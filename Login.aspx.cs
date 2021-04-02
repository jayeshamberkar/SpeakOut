using System;
using System.Data.SqlClient;
using System.Text;
using System.Data;
namespace Speakoutsign
{
    public partial class Common_Login : System.Web.UI.Page
    {
        static String decryptedpwd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["u_name"] != null)
                {
                    Response.Redirect("~/Users/Default.aspx");
                }
            }

        }
        private void decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptedpwd = decryptpwd;
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int ucount, acount, rcount;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {

                String query = "select count(*) from users where u_name = @u_name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("u_name", txtName.Text);
                conn.Open();
                ucount = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from admin where a_name = @a_name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("a_name", txtName.Text);
                conn.Open();
                acount = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from reporters where r_name = @r_name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("r_name", txtName.Text);
                conn.Open();
                rcount = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            if (ucount > 0)
            {
                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {
                    String query = "select * from users where u_name = @u_name";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("u_name", txtName.Text);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    String uname;
                    String pass;

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        uname = ds.Tables[0].Rows[0]["u_name"].ToString();
                        pass = ds.Tables[0].Rows[0]["u_password"].ToString();

                        conn.Close();
                        decryptpwd(pass);
                        if (uname == txtName.Text && decryptedpwd == txtPassword.Text)
                        {
                            Session["u_name"] = txtName.Text;
                            Response.Redirect("~/Users/Default.aspx");
                        }
                        else
                        {
                            Label1.Text = "Invalid Login Details";
                        }

                    }
                    else
                    {
                        Label1.Text = "Invalid Login Details";
                    }
                }

            }
            else if (rcount > 0)
            {
                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {
                    String query = "select * from reporters where r_name = @r_name";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("r_name", txtName.Text);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    String uname;
                    String pass;

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        uname = ds.Tables[0].Rows[0]["r_name"].ToString();
                        pass = ds.Tables[0].Rows[0]["r_password"].ToString();

                        conn.Close();
                        decryptpwd(pass);
                        if (uname == txtName.Text && decryptedpwd == txtPassword.Text)
                        {
                            Session["r_name"] = txtName.Text;
                            Response.Redirect("~/Reporter/Reporterhome.aspx");
                        }
                        else
                        {
                            Label1.Text = "Invalid Login Details";
                        }

                    }
                    else
                    {
                        Label1.Text = "Invalid Login Details";
                    }

                }
            }
            else if (acount > 0)
            {
                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {
                    String query = "select * from admin where a_name = @a_name";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("a_name", txtName.Text);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    String uname;
                    String pass;

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        uname = ds.Tables[0].Rows[0]["a_name"].ToString();
                        pass = ds.Tables[0].Rows[0]["a_password"].ToString();
                        conn.Close();
                        if (uname == txtName.Text && pass == txtPassword.Text)
                        {
                            Session["a_name"] = txtName.Text;
                            Response.Redirect("~/Admin/Adminhome.aspx");
                        }
                        else
                        {
                            Label1.Text = "Invalid Login Details";
                        }

                    }
                    else
                    {
                        Label1.Text = "Invalid Login Details";
                    }
                }
            }
            else
            {
                Label1.Text = "Username or password invalid";
            }
           
        }



    }
}

        
   
