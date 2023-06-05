using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace HotelRegistration
{
    public partial class Gridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GVbind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GVbind()
        {

            string cs = ConfigurationManager.ConnectionStrings["DBHR"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from register1", con);
                SqlDataReader dr=cmd.ExecuteReader();
                if (dr.HasRows==true) 
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }
    }
}
    
