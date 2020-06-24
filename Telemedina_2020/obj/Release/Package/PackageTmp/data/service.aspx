<%@ Page Title="Servicios" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="telemedicina.data.service" %>
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
                <h1>servicios</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>servicio</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <!--Service Section-->
    <section class="service-section bg-gray section">
        <div class="container">
            <div class="section-title text-center">
                <h3> Servicios              
                    <span>Prestados</span>
                </h3>
                <p>
                    Los servicio que ofrecemos para detectar y prevencionde  Covid-19 y entre  otros mediante
                    <br>
                    Telemedicina(Videoconferencia)
                </p>
            </div>
            <div class="row items-container clearfix">
                <div class="item">
                    <div class="inner-box">
                        <div class="img_holder">
                            <a href="service.html">
                                <img src="images/gallery/1.jpg" alt="images" class="img-responsive">
                            </a>
                        </div>
                        <div class="image-content text-center">
                            <a href="service.html">
                                <h6>NEUMOLOGÍA</h6>
                            </a>
                            <p>se encargan de tratar las patologías que muestren a pacientes   con señales de ahogo, tos crónica, tos aguda, estornudo frecuente y flemas</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner-box">
                        <div class="img_holder">
                            <a href="service.aspx">
                                <img src="images/gallery/2.jpg" alt="images" class="img-responsive">
                            </a>
                        </div>
                        <div class="image-content text-center">
                            <a href="service.aspx">
                                <h6>ALERGOLOGÍA</h6>
                            </a>
                            <p>Alergólogos cooperan para detectar qué casos son o no derivados del coronavirus.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner-box">
                        <div class="img_holder">
                            <a href="service.aspx">
                                <img src="images/gallery/3.jpg" alt="images" class="img-responsive">
                            </a>
                        </div>
                        <div class="image-content text-center">
                            <a href="service.aspx">
                                <h6>EPIDEMIOLOGÍA</h6>
                            </a>
                            <%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit, vero.</p>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Service Section-->

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
