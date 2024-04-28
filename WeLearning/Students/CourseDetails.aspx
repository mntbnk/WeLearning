<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="WeLearning.Students.CourseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <h3>Course Details</h3>
      <hr />




    <dx:ASPxGridView ID="ASPxGridView1" Settings-ShowColumnHeaders="false" Width="100%" runat="server">
        <Templates>
            <DataRow>
                <div style="padding:15px">
                    <h2>
                        <%#Eval("course_title") %>
                    </h2>
                    <br />
                    <div>
                        <%# Eval("course_content") %>
                    </div>
                </div>
            </DataRow>
        </Templates>
    </dx:ASPxGridView>

    <br />
    <h3>Attempt Quiz Questions for the Course</h3>
    <hr />

            <dx:ASPxGridView ID="ASPxGridView2" runat="server" Settings-ShowColumnHeaders="false" Width="100%" AutoGenerateColumns="False" KeyFieldName="question_id">
                <SettingsPopup>
                    <FilterControl AutoUpdatePosition="False">
                    </FilterControl>
                </SettingsPopup>
                <Columns>

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
                                        <dx:ASPxGridView ID="AnswersGrid" Settings-ShowColumnHeaders="false" runat="server" DataSourceID="ObjectDataSource3"
                                            KeyFieldName="answer_id" Width="100%" OnBeforePerformDataSelect="AnswersGrid_BeforePerformDataSelect">
                                           <Templates>
                                               <DataRow>
                                                   <table style="width:100%; padding:10px">
                                                       <tr>
                                                           <td>
                                                               <dx:ASPxCheckBox ID="ASPxCheckBox1" Text='<%#Eval("correct_ans") %>' runat="server"></dx:ASPxCheckBox>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td>
                                                               <dx:ASPxCheckBox ID="ASPxCheckBox2" runat="server" Text='<%#Eval("option_a") %>'></dx:ASPxCheckBox>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td>
                                                               <dx:ASPxCheckBox ID="ASPxCheckBox3" runat="server" Text='<%#Eval("option_b") %>'></dx:ASPxCheckBox>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td>
                                                               <dx:ASPxCheckBox ID="ASPxCheckBox4" runat="server" Text='<%#Eval("option_c") %>'></dx:ASPxCheckBox>
                                                          </td>
                                                       </tr>
                                                       <tr>
                                                           <td>
                                                               <asp:Button ID="btnSubmit" runat="server" Text="Submit Answers" OnClick="btnSubmit_Click" />
                                                           </td>
                                                       </tr>
                                                   </table>
                                               </DataRow>
                                           </Templates>
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

        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetByQuestionID" TypeName="WeLearning.DataSet1TableAdapters.tbl_AnswersTableAdapter">
        <SelectParameters>
            <asp:SessionParameter Name="questionid" SessionField="questionid" Type="Int32" />
        </SelectParameters>
        </asp:ObjectDataSource>


</asp:Content>
