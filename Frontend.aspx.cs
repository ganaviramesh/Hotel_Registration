using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class Frontend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Gridview.aspx");
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}