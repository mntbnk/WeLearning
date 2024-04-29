<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WeLearning.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" class="container mt-5">
        <h2 id="title" class="text-center display-4 mb-4"><%: Title %></h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body">
                        <h3 class="card-title">Get in Touch</h3>
                        <p class="card-text">We're here to help and answer any question you might have. We look forward to hearing from you.</p>
                        <div class="contact-info mb-4">
                            <h4>Contact Details</h4>
                            <p><strong>Address:</strong> Al Qusais 1, Dubai</p>
                            <p><strong>Phone:</strong> +971543607347</p>
                            <p><strong>Email:</strong> <a href="mailto:avi.ajay6@gmail.com">avi.ajay6@gmail.com</a></p>
                        </div>
                        <form>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Your Name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea class="form-control" id="message" rows="5" placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
