using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeLearning.DataSet1TableAdapters;

namespace WeLearning.Instructors
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            tbl_StudentsTableAdapter adapter = new tbl_StudentsTableAdapter();

            
            var studentsDataTable = adapter.GetStudentDetails();

            gridStudents.DataSource = studentsDataTable;
            gridStudents.DataBind();
        }
    }
}