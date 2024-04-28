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

            if (RadInstructor.Checked == true) 
            {

                tbl_InstructorsTableAdapter instructor = new tbl_InstructorsTableAdapter();
                Membership.CreateUser(Email.Text, Password.Text);
                Roles.AddUserToRole(Email.Text, "Instructors");
                instructor.Insert(txtfullname.Text, Email.Text);
                Response.Redirect("~/Default.aspx");
            }

            else if (RadStudent.Checked == true)
            {
                tbl_StudentsTableAdapter student = new tbl_StudentsTableAdapter();
                Membership.CreateUser(Email.Text, Password.Text);
                Roles.AddUserToRole(Email.Text, "Students");
                student.Insert(txtfullname.Text, Email.Text);
                Response.Redirect("~/Default.aspx");
            }

           
        }
    }
}