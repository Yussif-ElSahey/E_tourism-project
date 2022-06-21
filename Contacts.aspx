<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="WebApplication1.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Banner area -->
    <section class="banner_area" data-stellar-background-ratio="0.5">
        <h2>Contact Us</h2>
        <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="#" class="active">Contact Us</a></li>
        </ol>
    </section>
    <!-- End Banner area -->
    <!-- Map -->
    <div class="contact_map">
        <section class="all_contact_info">
            <div class="container">
                <div class="row contact_row">
                    <div class="col-sm-6 contact_info">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3399.9302094668733!2d31.44365731915277!3d30.054913595961825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzDCsDAzJzE3LjciTiAzMcKwMjYnNDUuMCJF!5e0!3m2!1sen!2seg!4v1567277662591!5m2!1sen!2seg"></iframe>                    </div>
                    <div class="col-sm-6 contact_info">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3197.988585147068!2d3.0928505148277377!3d36.72283537996449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x128fad4ba906a0ad%3A0xc397d33677ae4305!2sMohamed%20Ben%20Omar%20Bourass%20Cemetery%20-%20Kouba!5e0!3m2!1sen!2seg!4v1567277805748!5m2!1sen!2seg"></iframe> </div>
                </div>
            </div>
        </section>
    </div>

    <!-- End Map -->
    <!-- All contact Info -->
    <section class="all_contact_info">
        <div class="container">
            <div class="row contact_row">
                <div class="col-sm-6 contact_info">
                    <h2>Contact Info</h2>
                    <div class="location">
                        <div class="location_laft">
                            <a href="#">location</a>
                            <a href="#">phone</a>
                            <a href="#">fax</a>
                            <a href="#">email</a>
                        </div>
                        <div class="address">
                            <a href="#">Villa 1, Vlock 10006, Zone 10, El Tagamoa El Awel, New Cairo, Egypt </a>
                            <a href="#">+2 0222460747/48</a>
                            <a href="#">+2 0222460749</a>
                            <a href="#">info@mancont.com.com</a>
                        </div>
                    </div>

                </div>
                <div class="col-sm-6 contact_info">
                    <h2>Contact Info</h2>

                    <div class="location">
                        <div class="location_laft">
                            <a href="#">location</a>
                            <a href="#">phone</a>
                            <a href="#">fax</a>
                            <a href="#">email</a>
                        </div>
                        <div class="address">
                            <a href="#">319 DJNAN Ben Omar, Kouba, Alger, Algeria </a>
                            <a href="#">00213(0) 21281808</a>
                            <a href="#">00213(0) 21281808</a>
                            <a href="#">info@mancont.com.com</a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row contact_row">

                <div class="col-sm-6 contact_info send_message">
                    <h2>Send Us a Message</h2>
                    <form class="form-inline contact_box">
                        <input type="text" class="form-control input_box" placeholder="First Name *">
                        <input type="text" class="form-control input_box" placeholder="Last Name *">
                        <input type="text" class="form-control input_box" placeholder="Your Email *">
                        <input type="text" class="form-control input_box" placeholder="Subject">
                        <input type="text" class="form-control input_box" placeholder="Your Website">
                        <textarea class="form-control input_box" placeholder="Message"></textarea>
                        <button type="submit" class="btn btn-default">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End All contact Info -->
</asp:Content>
