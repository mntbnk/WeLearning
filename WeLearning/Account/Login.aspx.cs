using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WeLearning.Models;
using System.Web.Security;
using WeLearning.DataSet1TableAdapters;
using static DevExpress.Utils.MVVM.Internal.ILReader;

namespace WeLearning.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Email.Text, Password.Text))
            {
                string redirectUrl = "";
                if (Roles.IsUserInRole(Email.Text, "Instructors"))
                {
                    tbl_InstructorsTableAdapter instructor = new tbl_InstructorsTableAdapter();
                    Session["instructorID"] = instructor.GetInstructorID(Email.Text);
                    FormsAuthentication.SetAuthCookie(Email.Text, true);
                    redirectUrl = "~/Instructors/AddCourses.aspx";
                }
                else if (Roles.IsUserInRole(Email.Text, "Students"))
                {
                    tbl_StudentsTableAdapter student = new tbl_StudentsTableAdapter();
                    Session["studentID"] = student.GetStudentID(Email.Text);
                    FormsAuthentication.SetAuthCookie(Email.Text, true);
                    redirectUrl = "~/Students/ViewCourses.aspx";
                }

                // Use JavaScript for redirection after the alert
                string script = $"alert('Login successful!'); window.location='{ResolveClientUrl(redirectUrl)}';";
                ClientScript.RegisterStartupScript(this.GetType(), "loginSuccess", script, true);
            }
            else
            {
                // Unsuccessful login message
                ClientScript.RegisterStartupScript(this.GetType(), "loginError", "alert('Login unsuccessful. Please check your username and password.');", true);
            }
        }

    }
}