<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCourses.aspx.cs" Inherits="WeLearning.Students.ViewCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h3>List of Courses</h3>
     <hr />

    <dx:ASPxCardView ID="ASPxCardView1" Width="100%" runat="server">
        <Columns>
            <dx:CardViewTextColumn FieldName="course_title"></dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="instructor_name"></dx:CardViewTextColumn>
        </Columns>
        <Templates>
            <Card>
                <div style="padding:10px">
                <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CommandArgument=<%#Eval("course_id") %> Font-Bold="true" runat="server"> <%#Eval("course_title") %>  </asp:LinkButton>
                <br />
                <br />
                <h4>By</h4>
                <br />
                <h3>
                    <%#Eval("instructor_name") %>
                    </h3>
                    </div>
            </Card>
        </Templates>
    </dx:ASPxCardView>




</asp:Content>
