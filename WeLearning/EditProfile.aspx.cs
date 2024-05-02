using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WeLearning
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MembershipUser currentUser = Membership.GetUser();
                if (currentUser != null)
                {
                    txtUsername.Text = currentUser.UserName;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            MembershipUser currentUser = Membership.GetUser();
            if (currentUser != null)
            {
                string newPassword = txtPassword.Text.Trim();
                if (!string.IsNullOrEmpty(newPassword))
                {
                    string resetPassword = currentUser.ResetPassword();
                    bool changePasswordSucceeded = currentUser.ChangePassword(resetPassword, newPassword);

                    if (changePasswordSucceeded)
                    {
                        lblStatus.Text = "Password updated successfully.";
                        lblStatus.CssClass = "text-success";
                        lblStatus.Visible = true;
                    }
                    else
                    {
                        lblStatus.Text = "Password update failed. Please re-enter your values and try again.";
                        lblStatus.CssClass = "text-danger";
                        lblStatus.Visible = true;
                    }
                }
            }
        }
    }
    
}