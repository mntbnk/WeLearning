<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeLearning._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<main>
    <section class="jumbotron text-center bg-primary text-white">
        <h1 id="welearningTitle">WeLearning</h1>
        <p class="lead">Unlock Your Potential: Learning Unbound, Wherever You Are.</p>
    </section>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <div class="card-body">
                        <h2 id="gettingStartedTitle" class="card-title">Get Started!</h2>
                        <p class="card-text">
                            Register with us and gain access to over 200 tutorials!
                        </p>
                        <a class="btn btn-primary" href="/Account/Register">Register Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <div class="card-body">
                        <h2 id="librariesTitle" class="card-title">Expand Your Knowledge</h2>
                        <p class="card-text">
                            WeLearning fosters continuous knowledge growth through accessible, interactive platforms.
                        </p>
                        <!-- Interactive element like a button or link can be added here if needed -->
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <div class="card-body">
                        <h2 id="hostingTitle" class="card-title">Professional Tutors</h2>
                        <p class="card-text">
                            Our tutors inspire and empower, guiding students towards excellence.
                        </p>
                        <!-- Interactive element like a button or link can be added here if needed -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</asp:Content>
