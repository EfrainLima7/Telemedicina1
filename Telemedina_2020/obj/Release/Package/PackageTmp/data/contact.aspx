<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="telemedicina.data.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Main Header-->
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.aspx">Inicio</a>
                    </li>
                    <li>
                        <a href="about.aspx">Acerca</a>
                    </li>
                    <li>
                        <a href="service.aspx">Servicio</a>
                    </li>
                    <li>
                        <a href="gallery.aspx">Galeria</a>
                    </li>
                    <li>
                        <a href="contact.aspx">Contacto</a>
                    </li>
                    <li>
                        <a href="login.aspx">Sacar Cita</a>
                    </li>
                    <li>
                        <a href="login.aspx">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--End Main Header -->
    <!--Page Title-->
    <section class="page-title text-center" style="background-image: url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>Contacto</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>Contacto</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!--==================================
    =            Contact Form            =
    ===================================-->
    <section class="section contact">
        <!-- container start -->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="contact-form">
                        <!-- contact form start -->
                        <form action="#" class="row">
                            <!-- name -->
                            <div class="col-md-6">
                                <input type="text" name="name" class="form-control main" placeholder="Nombre" required>
                            </div>
                            <!-- email -->
                            <div class="col-md-6">
                                <input type="email" class="form-control main" placeholder="Email" required>
                            </div>
                            <!-- phone -->
                            <div class="col-md-12">
                                <input type="text" class="form-control main" placeholder="Teléfono" required>
                            </div>
                            <!-- message -->
                            <div class="col-md-12">
                                <textarea name="message" rows="6" class="form-control main" placeholder="Tu mensaje" ></textarea>
                            </div>
                            <!-- submit button -->
                            <div class="col-md-12 text-right">
                                <button class="btn btn-style-one" type="submit">Enviar mensaje</button>
                            </div>
                        </form>
                        <!-- contact form end -->
                    </div>
                </div>
                <div class="col-md-6">
                    <!-- address start -->
                    <div class="address-block">                        
                        <!-- Phone -->
                        <div class="media">
                            <i class="fa fa-phone"></i>
                            <div class="media-body">
                                <h3>Phone</h3>
                                <p>
                                    + (067) - 13 - 679345
                                </p>
                            </div>
                        </div>
                        <!-- Email -->
                        <div class="media">
                            <i class="fa fa-envelope-o"></i>
                            <div class="media-body">
                                <h3>Email</h3>
                                <p>
                                    info@telemedicina.com
                           
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- address end -->
                </div>
            </div>
        </div>
        <!-- container end -->
    </section>
    <!--====  End of Contact Form  ====-->

    <!--Script-->
    <script src="plugins/jquery.js"></script>
    <script src="plugins/bootstrap.min.js"></script>
    <script src="plugins/bootstrap-select.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick/slick.min.js"></script>
    <!-- FancyBox -->
    <script src="plugins/fancybox/jquery.fancybox.min.js"></script>

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>
    <!--End Script-->
</asp:Content>
