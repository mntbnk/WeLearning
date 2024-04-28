<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Discussion.aspx.cs" Inherits="WeLearning.Students.Discussion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container mt-4">
     <h2 class="text-center mb-4">Discussions</h2>
     <div class="row justify-content-center">
         <div class="col-md-8">
             <div class="card">
                 <div class="card-header">
                     Share Your Feedback
                 </div>
                 <div class="card-body">
                     <asp:Label ID="lblComment" runat="server" Text="Enter your comment:" AssociatedControlID="txtComment" CssClass="font-weight-bold"></asp:Label>
                     <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvComment" runat="server" ControlToValidate="txtComment" ErrorMessage="Comment is required." Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                     <br />
                     <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="btnSubmit_Click" Text="Submit"></dx:ASPxButton>
                 </div>
             </div>
            <asp:GridView ID="gvComments" runat="server" CssClass="table table-striped table-bordered mt-4" AutoGenerateColumns="False" style="table-layout: fixed; width: 100%;">
    <Columns>
        <asp:BoundField DataField="AuthorName" HeaderText="Author" />
        <asp:TemplateField HeaderText="Comment">
            <ItemTemplate>
                <div style="word-wrap: break-word; overflow-wrap: break-word;">
                    <%# Eval("Content") %>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="PostedDate" HeaderText="Date Posted" DataFormatString="{0:dd/MM/yyyy}" />
    </Columns>
</asp:GridView>
         </div>
     </div>
 </div>
</asp:Content>
