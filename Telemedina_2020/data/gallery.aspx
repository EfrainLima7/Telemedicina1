<%@ Page Title="Galeria" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="telemedicina.data.gallery" %>
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
                <h1>Galeria</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>Galeria</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <section class="video-gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3>Medios recolectados
                       
                            <span>de la atención</span>
                        </h3>
                        <%--<p>Leverage agile frameworks to provide a robust synopsis for high level overv-
                        <br>iews. Iterative approaches to corporate strategy...</p>--%>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="video-gallery-item">
                        <div class="image-holder">
                            <img src="images/gallery/video-thumb-01.jpg" class="img-responsive" alt="video-gallery">
                            <a data-fancybox="" href="https://www.youtube.com/watch?v=h-h5Mhlt6O0"><i class="fa fa-play"></i></a>
                        </div>
                        <h3>Enero 2020 Huancavelica Videocoferencia</h3>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="video-gallery-item">
                        <div class="image-holder">
                            <img src="images/gallery/video-thumb-02.jpg" class="img-responsive" alt="video-gallery">
                            <a data-fancybox="" href="https://www.youtube.com/watch?v=h-h5Mhlt6O0">
                                <i class="fa fa-play"></i>
                            </a>
                        </div>
                        <h3>Enero 2020 Huancavelica Videocoferencia</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
