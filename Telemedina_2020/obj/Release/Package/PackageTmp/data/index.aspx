<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="telemedicina.data.index" %>
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
    <!--=================================
    =            Page Slider            =
    ==================================-->
    <div class="hero-slider">
        <!-- Slider Item -->
        <div class="slider-item slide1" style="background-image: url(images/slider/slider-bg-1.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Slide Content Start -->
                        <div class="content style text-center">
                            <h2 class="text-white text-bold mb-2">Los Mejores servicios medicos</h2>
                            <p class="tag-text mb-5">
                                Consultas medicas mediante videoconferencia desde el lugar 
                                <br>
                                donde te encuentres
                            </p>
                            <a href="login.aspx" class="btn btn-main btn-white">sacar Cita</a>
                        </div>
                        <!-- Slide Content End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Slider Item -->
        <div class="slider-item" style="background-image: url(images/slider/slider-bg-2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Slide Content Start-->
                        <div class="content style text-right">
                            <h2 class="text-white">Nos preocupamos 
                                <br>
                                Por su salud</h2>
                            <p class="tag-text">Puedes ver nuestro servicios que ofrecemos. </p>
                            <a href="service.aspx" class="btn btn-main btn-white">Nuestro servicios</a>
                        </div>
                        <!-- Slide Content End-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Slider Item -->
        <div class="slider-item" style="background-image: url(images/slider/slider-bg-3.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Slide Content Start -->
                        <div class="content text-center style">
                            <h2 class="text-white text-bold mb-2">Nuestros Mejores Especialistas</h2>
                            <p class="tag-text mb-5">
                               Ofrecemos las mejores atenciones a distancia mediante videoconferencia
                                    <br>
                                consultas en vivo.
                            </p>
                            <a href="gallery.aspx" class="btn btn-main btn-white">ver videos</a>
                        </div>
                        <!-- Slide Content End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====  End of Page Slider  ====-->

    <section class="cta">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cta-block">
                        <div class="emmergency item">
                            <i class="fa fa-phone"></i>
                            <h2>Casos de Emergencia</h2>
                            <a>+ (067) - 13 - 679345</a>
                            <p>puedes consultar cualquier emergencia,puedes comunicarte con nosotros</p>
                        </div>
                        <div class="top-doctor item">
                            <i class="fa fa-stethoscope"></i>
                            <h2>Servicios 24 Horas</h2>
                            <p>consultas en vivo en la hora citada</p>
                            <a href="#" class="btn btn-main">Mas</a>
                        </div>
                        <div class="working-time item">
                            <i class="fa fa-hourglass-o"></i>
                            <h2>Horas Laborales</h2>
                            <ul class="w-hours">
                                <li>LUN - VIE  - <span>8:00am - 8:00pm</span></li>
                                <li>LUN - VIE  - <span>8:00am - 8:00pm</span></li>
                                <li>LUN - VIE  - <span>8:00am - 8:00pm</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--about section-->
    <section class="feature-section section bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="image-content">
                        <div class="section-title text-center">
                            <h3>Las mejores Caracteristicas de nuestro
                                    <span>Servicio de Telemedicina</span>
                            </h3>
                            <p>
                                Ofrecemos servicio de telemedicina , mediante video conferencia de alta calidad.
                                                                
                            </p>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="item">
                                    <div class="icon-box">
                                        <figure>
                                            <a >
                                                <img src="images/resource/1.png" alt=""/>
                                            </a>
                                        </figure>
                                    </div>
                                    <h6>COVID-19</h6>
                                    <p>
                                        Consulta de covid-19 para deteccion
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="item">
                                    <div class="icon-box">
                                        <figure>
                                            <a >
                                                <img src="images/resource/2.png" alt=""/>
                                            </a>
                                        </figure>
                                    </div>
                                    <h6>Diagnosticos</h6>
                                    <p>
                                       Consultas para detectar Covid-19 en cualquier persona mediante preguntas.
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="item">
                                    <div class="icon-box">
                                        <figure>
                                            <a >
                                                <img src="images/resource/3.png" alt=""/>
                                            </a>
                                        </figure>
                                    </div>
                                    <h6>Consulta en vivo</h6>
                                    <p>
                                        Realiza todo tipo de consultas acerca del Covid-19 ,principales sintomas 
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="item">
                                    <div class="icon-box">
                                        <figure>
                                            <a >
                                                <img src="images/resource/4.png" alt=""/>
                                            </a>
                                        </figure>
                                    </div>
                                    <h6>Consultas COVID-19</h6>
                                    <p>
                                        <%--Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil ducimus veniam illo quibusdam pariatur ex sunt, est aspernatur
                                            at debitis eius vitae vel nostrum dolorem labore autem corrupti odit mollitia?--%>
                                    </p>
                                </div>
                            </div>
                        </div>
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
