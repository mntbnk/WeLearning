using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WeLearning.Models;
using System.Web.Security;
using WeLearning.DataSet1TableAdapters;

namespace WeLearning.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            bool isUserCreated = false;
            string role = "";

            if (RadInstructor.Checked == true)
            {
                tbl_InstructorsTableAdapter instructor = new tbl_InstructorsTableAdapter();
                Membership.CreateUser(Email.Text, Password.Text);
                Roles.AddUserToRole(Email.Text, "Instructors");
                instructor.Insert(txtfullname.Text, Email.Text);
                isUserCreated = true;
                role = "Instructor";
            }
            else if (RadStudent.Checked == true)
            {
                tbl_StudentsTableAdapter student = new tbl_StudentsTableAdapter();
                Membership.CreateUser(Email.Text, Password.Text);
                Roles.AddUserToRole(Email.Text, "Students");
                student.Insert(txtfullname.Text, Email.Text);
                isUserCreated = true;
                role = "Student";
            }

            if (isUserCreated)
            {
                // Use JavaScript for the alert and redirection
                string script = $"alert('Registration successful as {role}!'); window.location='{ResolveClientUrl("~/Default.aspx")}';";
                ClientScript.RegisterStartupScript(this.GetType(), "registrationSuccess", script, true);
            }
            else
            {
                // Handle the case where user creation failed
                // You can display an error message or take other appropriate actions
            }
        }
    }
}