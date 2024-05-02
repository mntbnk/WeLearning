<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WeLearning.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        Edit Profile
                    </div>
                    <div class="card-body">
                        <asp:Label ID="lblStatus" runat="server" CssClass="text-success" Visible="false"></asp:Label>
                        <div class="form-group">
                            <label for="txtUsername">Username:</label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ReadOnly="true" />
                        </div>
                        <div class="form-group">
                            <label for="txtPassword">New Password:</label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                        </div>
                        <asp:Button ID="btnSave" runat="server" Text="Update Password" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
