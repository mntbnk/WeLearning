<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCourses.aspx.cs" Inherits="WeLearning.Instructors.AddCourses" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v23.2, Version=23.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v23.2, Version=23.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v23.2, Version=23.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Courses</h3>
    <hr />
    <asp:Label ID="lblerror" runat="server" Font-Bold="true" ForeColor="Maroon"></asp:Label>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <h5>List of Courses</h5>
            <br />
        <div style="float:right">
            <dx:ASPxButton ID="Button1" OnClick="Button1_Click1" CssClass="btn btn-info" runat="server"  Text="Add New Courses"></dx:ASPxButton>
        </div>
        <br /><br />            
        <dx:aspxgridview ID="aspxgridview" OnRowCommand="aspxgridview_RowCommand" runat="server" Width="100%" EnableViewState="true" ViewStateMode="Enabled">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="course_title" Caption="Courses"></dx:GridViewDataTextColumn>
                <dx:GridViewDataColumn>
                    <DataItemTemplate>
                        <dx:ASPxButton ID="ASPxButton1" CommandName="question" CommandArgument='<%#Eval("course_id") %>' runat="server" Text="Add Quiz Questions"></dx:ASPxButton>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
        </dx:aspxgridview>   
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h5>Add a New Course</h5>
            <br />
            <div class="row">
                <div class="col-md-2" style="padding:5px">
                    Course Title
                </div>
                <div class="col-md-10" style="padding:5px">
                    <asp:TextBox ID="txttitle" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2" style="padding:5px">
                    Course Content
                </div>
                <div class="col-md-10" style="padding:5px">
                    <dx:ASPxHtmlEditor runat="server" ID="htmlContent"></dx:ASPxHtmlEditor>
                </div>
                <div class="col-md-2" style="padding:5px"></div>
                <div class="col-md-10" style="padding:5px">
                    <dx:ASPxButton ID="ASPxButton2" OnClick="Button2_Click" CssClass="btn btn-info" runat="server"  Text="Save & Continue"></dx:ASPxButton>
                </div>
            </div>

        </asp:View>
        <asp:View ID="View3" runat="server">
            <h5>Add Quiz Questions to
                <dx:ASPxLabel ID="lblquestionA" Font-Bold="true" runat="server" ></dx:ASPxLabel>
            </h5>
            <br />
            <dx:ASPxGridView ID="ASPxGridView1" DataSourceID="ObjectDataSource2" runat="server" Width="100%" AutoGenerateColumns="False" KeyFieldName="question_id">
                <SettingsPopup>
                    <FilterControl AutoUpdatePosition="False">
                    </FilterControl>
                </SettingsPopup>
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="question_id" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="course_id" Visible="false" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="question" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <Templates>
                     <DetailRow>
                <div style="padding: 3px 3px 2px 3px">
                    <dx:ASPxPageControl runat="server" ID="pageControl" Width="100%" EnableCallBacks="true">
                        <TabPages>
                            <dx:TabPage Text="Answers" Visible="true">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="AnswersGrid" runat="server" DataSourceID="ObjectDataSource3"
                                            KeyFieldName="answer_id" Width="100%" OnBeforePerformDataSelect="AnswersGrid_BeforePerformDataSelect">
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true"></dx:GridViewCommandColumn>
                                                <dx:GridViewDataColumn FieldName="correct_ans" />
                                                <dx:GridViewDataColumn FieldName="option_a" />
                                                <dx:GridViewDataColumn FieldName="option_b" />
                                                <dx:GridViewDataTextColumn FieldName="option_c">
                                                </dx:GridViewDataTextColumn> 
                                            </Columns>
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                </div>
            </DetailRow>
                </Templates>
                  <SettingsDetail ShowDetailRow="true" AllowOnlyOneMasterRowExpanded="true" />
                  <Settings ShowFooter="true" />
                  <SettingsPager EnableAdaptivity="true" />
                  <Styles Header-Wrap="True"/>
            </dx:ASPxGridView>
            <br />
         
        </asp:View>


        


    </asp:MultiView>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetByCourseID" TypeName="WeLearning.DataSet1TableAdapters.tbl_QuestionsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_question_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="course_id" SessionField="courseid" Type="Int32" />
            <asp:Parameter Name="question" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="courseid" SessionField="courseid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="course_id" SessionField="courseid" Type="Int32" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="Original_question_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetByQuestionID" TypeName="WeLearning.DataSet1TableAdapters.tbl_AnswersTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_answer_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="question_id" SessionField="questionid" Type="Int32" />
            <asp:Parameter Name="correct_ans" Type="String" />
            <asp:Parameter Name="option_a" Type="String" />
            <asp:Parameter Name="option_b" Type="String" />
            <asp:Parameter Name="option_c" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="questionid" SessionField="questionid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="question_id" SessionField="questionid" Type="Int32" />
            <asp:Parameter Name="correct_ans" Type="String" />
            <asp:Parameter Name="option_a" Type="String" />
            <asp:Parameter Name="option_b" Type="String" />
            <asp:Parameter Name="option_c" Type="String" />
            <asp:Parameter Name="Original_answer_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
