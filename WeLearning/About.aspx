<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WeLearning.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <main aria-labelledby="title" class="about-page">
    <section class="hero-section text-center bg-image">
        <h1 id="welearningTitle" style="color: black; font-weight: bold; font-size: 2.5rem; text-transform: uppercase; letter-spacing: 2px;">Welcome to WeLearning</h1>
        <p class="lead text-white">Your gateway to limitless knowledge and boundless opportunities.</p>
    </section>

    <div class="container py-5">
        <section class="mission-statement">
            <h2>Our Mission</h2>
            <p>At WeLearning, we're dedicated to revolutionizing education by offering an immersive and interactive online learning experience tailored to your unique needs.</p>
        </section>

        <section class="why-choose-us my-5">
            <h2>Why Choose Us</h2>
            <p>Whether you're a student aiming to excel academically, a professional seeking to upskill or pivot careers, or an enthusiast eager to explore new interests, our platform provides a diverse array of courses and resources to empower your learning journey.</p>
        </section>

        <section class="learning-opportunities">
            <h2>Discover Our Courses</h2>
            <p>Discover courses taught by experts in their fields, engage in hands-on projects to apply your newfound knowledge, and connect with a global community of learners who share your passions and ambitions.</p>
        </section>

        <section class="flexible-learning my-5">
            <h2>Learn at Your Pace</h2>
            <p>With our intuitive interface and flexible learning options, you can learn anytime, anywhere, at your own pace.</p>
        </section>

        <section class="join-us">
            <h2>Join Our Community</h2>
            <p>Join us at WeLearning and unlock your full potential. Embrace the future of education with us.</p>
        </section>
    </div>
</main>
</asp:Content>
