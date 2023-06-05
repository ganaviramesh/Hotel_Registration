using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HotelRegistration
{
    public partial class Register : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["hotelConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string Name = Request.Form["name"];
            string Phone_Number = Request.Form["number"];
            string Email = Request.Form["email"];
            string Arrival_date = Request.Form["arrdate"];
            string Arrival_time = Request.Form["arrtime"];
            string Departure_date = Request.Form["depdate"];
            string Room_type = ((DropDownList)Form.FindControl("DropDownList1")).SelectedValue;
            string Free_pickup = Request.Form["group"] ;
            string Special_request = Request.Form["request"];


            string query = "INSERT INTO register (Name, Phone_Number, Email, Arrival_date, Arrival_time, Departure_date, Room_Type, Free_Pickup, Special_request) VALUES (@Name, @Phone_Number, @Email, @Arrival_date, @Arrival_time, @Departure_date, @Room_type, @Free_pickup, @Special_request)";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Name",  Name);
            command.Parameters.AddWithValue("@Phone_Number", Phone_Number);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Arrival_date", Arrival_date);
            command.Parameters.AddWithValue("@Arrival_time", Arrival_time);
            command.Parameters.AddWithValue("@Departure_date", Departure_date);
            command.Parameters.AddWithValue("@Room_Type", Room_type);
            command.Parameters.AddWithValue("@Free_Pickup", Free_pickup);
            command.Parameters.AddWithValue("@Special_request", Special_request);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Response.Redirect("Frontend.aspx");
        }
    }
}