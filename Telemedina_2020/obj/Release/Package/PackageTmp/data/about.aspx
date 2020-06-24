<%@ Page Title="Sobre Nosotros" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="telemedicina.data.about" %>
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
                <h1>Sobre Nosotros</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>Sobre Nosotros</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <!-- Our Story -->
    <section class="story">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="images/services/service-one.jpg" class="responsive" alt="story">
                </div>
                <div class="col-md-6">
                    <div class="story-content">
                        <h2>Nuestra Historia</h2>
                        <h6 class="tagline">"Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum, minima."</h6>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus totam ducimus est vero, officiis, placeat optio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias aliquam nesciunt fugit optio illum aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque assumenda, est quam perferendis expedita autem?</p>
                        <h6>Misión</h6>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nam nihil dolorum beatae consequatur mollitia iure?</p>
                        <h6>Visión</h6>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda consectetur adipisci, voluptatum dolores nostrum omnis.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Promo Video -->
    <section class="promo-video">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="block text-center">
                        <h6>Sobre Nuestra Atención</h6>
                        <h1>Atención de Telemidicina
                            <br>
                            Videoconferencia
                    </h1>
                        <a data-fancybox=""  href="https://www.youtube.com/watch?v=_sI_Ps7JSEk&amp;autoplay=1&amp;rel=0&amp;controls=0&amp;showinfo=0"><i class="fa fa-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="gallery bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3>Fotos recogidos de las consultas
                       
                            <span>Remotas</span>
                        </h3>
                        <p>
                            atencion de consultas sobre covid-19 que se realizan 
                       
                            <br>
                            mediante telemedina
                        </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-01.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-01.jpg"></a>
                        <h3>Facility 01</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-02.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-02.jpg"></a>
                        <h3>Facility 02</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-03.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-03.jpg"></a>
                        <h3>Facility 03</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-04.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-04.jpg"></a>
                        <h3>Facility 04</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-05.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-05.jpg"></a>
                        <h3>Facility 05</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="gallery-item">
                        <img src="images/gallery/gallery-06.jpg" class="img-responsive" alt="gallery-image">
                        <a data-fancybox="images" href="images/gallery/gallery-06.jpg"></a>
                        <h3>Facility 06</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, in.</p>
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
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script src="plugins/google-map/gmap.js"></script>

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>
    <!--End Script-->
</asp:Content>
