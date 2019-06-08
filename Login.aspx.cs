using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelDiary2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable filltbl()
        {
            SqlConnection oco = new SqlConnection(ConfigurationManager.ConnectionStrings["TestCS"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable("bla");
            string str = "select * from Korisnici2 where Username=@username and Password=@word";
            

            da.SelectCommand = new SqlCommand(str, oco);
            da.SelectCommand.Parameters.Add(new SqlParameter("@username", SqlDbType.NVarChar, 50)).Value = TextBox1.Text;
            da.SelectCommand.Parameters.Add(new SqlParameter("@word", SqlDbType.NVarChar, 50)).Value = TextBox2.Text;
            da.Fill(dt);
            oco.Close();

            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable dt = filltbl();

            if (dt.Rows.Count > 0)
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "Your username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.White;

            }
        }

        protected void reg1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(
               ConfigurationManager.ConnectionStrings["TestCS"].ConnectionString);
            string result = "INSERT INTO Korisnici2 VALUES('" + user1.Text + "','" + pw1.Text + "','" + email1.Text + "');";
            conn.Open();
            SqlCommand showresult = new SqlCommand(result, conn);
            
            showresult.ExecuteNonQuery();
            lbl2.Text = "Thank you for registering!";
            conn.Close();
        }
    }
}
