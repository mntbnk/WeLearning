using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using WeLearning.DataSet1TableAdapters;

namespace WeLearning.Students
{
    public partial class Discussion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCommentsGrid();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validate the comment input
            if (string.IsNullOrWhiteSpace(txtComment.Text))
            {
                // Handle empty comment case
                return;
            }

            // Insert the new comment into the database
            tbl_CommentsTableAdapter adapter = new tbl_CommentsTableAdapter();
            adapter.InsertComment(null, Context.User.Identity.GetUserName(), txtComment.Text, DateTime.Now, null);

            // Clear the comment box
            txtComment.Text = string.Empty;

            // Re-bind the comments grid to show the new comment
            BindCommentsGrid();
        }

        private void BindCommentsGrid()
        {
            // Retrieve comments from the database
            tbl_CommentsTableAdapter adapter = new tbl_CommentsTableAdapter();
            gvComments.DataSource = adapter.GetData();
            gvComments.DataBind();
        }
    }

}