using System;
using System.Data.SqlClient;
using System.Text;
namespace Speakoutsign
{
    public partial class Common_Registration : System.Web.UI.Page
    {
        String encrypw;
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
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobileNumber.Text = "";
            txtPassword.Text = "";

        }
        public void encrypt()
        {

            string strmsg = string.Empty;
            byte[] encode = new byte[txtPassword.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txtPassword.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypw = strmsg;

        }
       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int count = 0;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from users where u_name = @u_name";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("u_name", txtName.Text);
                conn.Open();
                count = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            int mno = 0;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from users where u_mobileno = @u_mobileno";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("u_mobileno", txtMobileNumber.Text);
                conn.Open();
                mno = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            int eno = 0;
            using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
            {
                String query = "select count(*) from users where u_emailid = @u_emailid";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("u_emailid", txtEmail.Text);
                conn.Open();
                eno = (int)cmd.ExecuteScalar();
                conn.Close();
            }
            if (count == 0 && mno == 0 && eno == 0)
            {

                using (SqlConnection conn = new SqlConnection(SpeakOutLibrary.ConnectionString))
                {

                    encrypt();
                    String query = "insert into users (u_name, u_password, u_mobileno, u_emailid) values (@u_name, @u_password, @u_mobileno, @u_emailid)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("u_name", txtName.Text);

                    cmd.Parameters.AddWithValue("u_password", encrypw);
                    cmd.Parameters.AddWithValue("u_mobileno", txtMobileNumber.Text);
                    cmd.Parameters.AddWithValue("u_emailid", txtEmail.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Login.aspx");
                }
            }
            else if (count > 0)
            {
                lblMessage.Text = "Name exist. Please Select another Name.";
            }
            else if (mno > 0)
            {
                lblMessage.Text = "Mobile number exist. Please Enter another mobile number.";
            }
            else
            {
                lblMessage.Text = "Email id exist. Please enter another emailid.";
            }
        }
    }
}

