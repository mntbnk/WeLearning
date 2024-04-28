using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeLearning.DataSet1TableAdapters;


namespace WeLearning.Instructors
{
    public partial class AddCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbl_CoursesTableAdapter icourses = new tbl_CoursesTableAdapter();
                aspxgridview.DataSource = icourses.GetByInstrcID((int)Session["instructorID"]);
                aspxgridview.DataBind();
            }
           
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                tbl_CoursesTableAdapter icourses = new tbl_CoursesTableAdapter();
                icourses.Insert((int)Session["instructorID"], txttitle.Text, htmlContent.Html);
                Response.Redirect("~/Instructors/AddCourses.aspx");
               
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.ToString();
            }
        }

        protected void aspxgridview_RowCommand(object sender, DevExpress.Web.ASPxGridViewRowCommandEventArgs e)
        {
            if(e.CommandArgs.CommandName == "question")
            {
                Session["courseid"] = e.CommandArgs.CommandArgument;
                lblquestionA.Text = aspxgridview.GetRowValues(e.VisibleIndex, "course_title").ToString();
                MultiView1.SetActiveView(View3);
            }
        }

        protected void AnswersGrid_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["questionid"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
    }
}