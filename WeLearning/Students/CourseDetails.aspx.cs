using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeLearning.DataSet1TableAdapters;

namespace WeLearning.Students
{
    public partial class CourseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbl_CoursesTableAdapter icourses = new tbl_CoursesTableAdapter();
                ASPxGridView1.DataSource = icourses.GetByCourseID(Convert.ToInt32( Session["courseid"]));
                ASPxGridView1.DataBind();
                tbl_QuestionsTableAdapter iquestions = new tbl_QuestionsTableAdapter();
                ASPxGridView2.DataSource = iquestions.GetByCourseID(Convert.ToInt32(Session["courseid"]));
                ASPxGridView2.DataBind();
            }
        }

        protected void AnswersGrid_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["questionid"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
         
        }
    }
}