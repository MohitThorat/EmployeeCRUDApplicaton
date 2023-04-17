using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeCRUDApplicaton
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
            
            SqlDataSource1.Updated += SqlDataSource1_Updated;
        }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                //Show error message
                ltError.Text = "Error: " + e.Exception.Message;
                ltError.Visible = true;
                //Set the exception handled property so it doesn't bubble-up
                e.ExceptionHandled = true;
                return;
            }
        }
    }
}