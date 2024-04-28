using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeLearning.DataSet1TableAdapters;

namespace WeLearning.Students
{
    public partial class ViewCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                vw_CoursesTableAdapter icourses = new vw_CoursesTableAdapter();
                ASPxCardView1.DataSource = icourses.GetData();
                ASPxCardView1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            Session["courseid"] = lnk.CommandArgument;
            Response.Redirect("~/Students/CourseDetails.aspx");
        }
    }
}