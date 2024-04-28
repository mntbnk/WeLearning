<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WeLearning.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Our contact page</h3>
        <address>
            Al Qusais 1<br />
            Dubai<br />
            <abbr title="Phone">Our Number:</abbr>
            +971543607347
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:avi.ajay6@gmail.com">avi.ajay6@gmail.com</a><br />
        </address>
    </main>
</asp:Content>
