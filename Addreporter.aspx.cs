using System;
using System.Data.SqlClient;
using System.Text;
namespace Speakoutsign
{
    public partial class Admin_Addreporter : System.Web.UI.Page
    {
        String encrypw;
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
        public void encrypt()
        {

            string strmsg = string.Empty;
            byte[] encode = new byte[TextBox2.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(TextBox2.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypw = strmsg;

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = 0;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from reporters where r_name = @r_name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("r_name", TextBox1.Text);
                conn.Open();
                count = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            if (count == 0)
            {

                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {

                    encrypt();
                    String query = "insert into reporters (r_name, r_password) values (@r_name, @r_password)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("r_name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("r_password", encrypw);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = "Reporter Added";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
            else
            {
                Label1.Text = "Name exist. Please Select another Name.";
            }
        }
    }
}