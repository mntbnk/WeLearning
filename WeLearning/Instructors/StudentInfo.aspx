<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="WeLearning.Instructors.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <dx:ASPxGridView ID="gridStudents" runat="server" AutoGenerateColumns="False" CssFilePath="~/App_Themes/Bootstrap.css" CssClass="table table-bordered table-striped">
                    <SettingsBehavior AllowSort="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="student_name" Caption="Student Name" VisibleIndex="1" />
                        <dx:GridViewDataTextColumn FieldName="student_email" Caption="Student Email" VisibleIndex="2" />
                    </Columns>
                    <SettingsPager PageSize="10" />
                </dx:ASPxGridView>
            </div>
        </div>
    </div>
</asp:Content>
