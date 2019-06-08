using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelDiary2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["id"].ToString();


            SqlDataSource1.SelectCommand = "SELECT * FROM Travel where Username = '" + Label1.Text + "'";

            SqlConnection conn = new SqlConnection(
              ConfigurationManager.ConnectionStrings["TestCS"].ConnectionString);

            string result = "SELECT SUM(Distance) from Travel where Username = '" + Label1.Text + "' and Means = 'Bus'";
            string result2 = "SELECT SUM(Distance) from Travel where Username = '" + Label1.Text + "' and Means = 'Car'";
            string result3 = "SELECT SUM(Distance) from Travel where Username = '" + Label1.Text + "' and Means = 'Airplane'";
            string result4 = "SELECT SUM(Distance) from Travel where Username = '" + Label1.Text + "' and Means = 'Other'";
            string result5 = "select sum(Distance)from Travel where Username = '" + Label1.Text + "' and DATEPART(YEAR, StartDate) = 2017";
            string result6 = "select sum(Distance)from Travel where Username = '" + Label1.Text + "' and DATEPART(YEAR, StartDate) = 2018";
            SqlCommand showresult = new SqlCommand(result, conn);
            SqlCommand showresult2 = new SqlCommand(result2, conn);
            SqlCommand showresult3 = new SqlCommand(result3, conn);
            SqlCommand showresult4 = new SqlCommand(result4, conn);
            SqlCommand showresult5 = new SqlCommand(result5, conn);
            SqlCommand showresult6 = new SqlCommand(result6, conn);
            conn.Open();
            lbl3.Text = showresult.ExecuteScalar().ToString();
            lbl4.Text = showresult2.ExecuteScalar().ToString();
            lbl5.Text = showresult3.ExecuteScalar().ToString();
            lbl6.Text = showresult4.ExecuteScalar().ToString();
            lbl7.Text = showresult5.ExecuteScalar().ToString();
            lbl8.Text = showresult6.ExecuteScalar().ToString();
            conn.Close();
        }
            protected void DetailsView1_ItemInserted1(object sender, DetailsViewInsertedEventArgs e)
        {
            lbl1.Text = "Data has been Inserted Successfully!";
            DetailsView1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            Label2.Text = "Data has been Updated Successfully!";
            GridView1.DataBind();


        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Label2.Text = "Data has been Deleted Successfully!";
            GridView1.DataBind();

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}