using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace EmployeeCRUDApplicaton
{
    public partial class AddEmployee : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var results = new List<ValidationResult>();

            if (!Page.IsValid)
            {
                foreach (var validationResult in results)
                {
                    Response.Write(validationResult.ErrorMessage.ToString());
                }

                return;
            }

            var name = txtName.Text.ToString();
            var email = txtEmail.Text.ToString();
            var mobile = txtMobile.Text.ToString();
            var age = txtAge.Text.ToString();
            var city = txtCity.Text.ToString();
            var birthDay = txtBirthday.Text.ToString();

            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;

            using (SqlConnection dbConnection = new SqlConnection(connectionFromConfiguration))
            {
                try
                {
                    dbConnection.Open();
                    ltError.Text = "Connection successful";
                    string sql = string.Format("Insert into dbo.Employee(FullName,Email,City,Age,mobileno,DateOfBirth,ModifiedTime) Values ('{0}', '{1}', '{2}', '{3}','{4}','{5}',CURRENT_TIMESTAMP)",name,email,city,age,mobile,birthDay);
                    SqlCommand command = new SqlCommand(sql, dbConnection);
                    command.ExecuteNonQuery();
                    ltSuccess.Visible = true;
                    ltSuccess.Text = @"Operation Successfull: " + name + " was added to the system.";
                    ltError.Visible = false;
                }
                catch(SqlException ex)
                {
                    ltError.Text = @"Connection failed: " + ex.Message;
                    ltSuccess.Visible = false;
                    ltError.Visible = true;
                }
                finally
                {
                    dbConnection.Close();
                    dbConnection.Dispose();
                }
                ltSuccess.Text = @"Operation Successfull: " + name + " was added to the system.";
            }
        }
    }
}