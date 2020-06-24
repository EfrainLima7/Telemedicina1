<%@ Page Title="" Language="C#" MasterPageFile="~/administrador.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Telemedina_2020.admin.index" %>
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
                        <a href="../admin/index.aspx">Inicio</a>
                    </li>
                    <li>
                        <a href="Historial_Citas_Especialista.aspx">Citas</a>
                    </li>
                    <li>
                        <a href="Empezar_Telemedicina.aspx">Telemedicina</a>
                    </li>
                    <li>
                        <a href="#">Documentos</a>
                    </li>
                    <li>
                        <a href="Nuevos_Especialistas.aspx">Administrar-M-H</a>
                    </li>
                    <li>
                        <a>
                            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="../data/index.aspx">Salir</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--End Main Header -->

    <!--testimonial-section-->
    <section class="testimonial-section" style="background: url(images/testimonials/1.jpg);">
        <div class="container">
            <div class="section-title text-center">
                <h3>Total de Usuarios Medicos,Especialistas,
               
                    <span>Especialidad y Citas</span>
                </h3>
            </div>
            <div class="testimonial-carousel">
                <!--Slide Item-->
                <div class="slide-item">
                    <div class="inner-box text-center">
                        <div class="image-box">
                            <figure>
                                <img src="images/testimonials/3.png" alt="">
                            </figure>
                        </div>
                        <h6><asp:Label Text="Total de Medico Especialistas" CssClass="count" runat="server" /></h6>
                        <h6><asp:Label ID="espcialista" CssClass="count" runat="server" /></h6>
                        <p>Descripcion</p>
                    </div>
                </div>
                <!--Slide Item-->
                <div class="slide-item">
                    <div class="inner-box text-center">
                        <div class="image-box">
                            <figure>
                                <img src="images/resource/1.png" alt="">
                            </figure>
                        </div>
                        <h6>Total de Especialidades</h6>
                        <h6><asp:Label ID="especialidades" CssClass="count" runat="server" /></h6>
                        <p>Descripcion</p>
                    </div>
                </div>
                <!--Slide Item-->
                <div class="slide-item">
                    <div class="inner-box text-center">
                        <div class="image-box">
                            <figure>
                                <img src="images/resource/2.png" alt="">
                            </figure>
                        </div>
                        <h6>Medicos Registrados</h6>
                        <h6><asp:Label ID="medicos" CssClass="count" runat="server" /></h6>
                        <p>Descripcion</p>
                    </div>
                </div>
                <!--Slide Item-->
                <div class="slide-item">
                    <div class="inner-box text-center">
                        <div class="image-box">
                            <figure>
                                <img src="images/resource/3.png" alt="">
                            </figure>
                        </div>
                        <h6>Total de Citas Registrados</h6>
                        <h6><asp:Label ID="citas" CssClass="count" runat="server" /></h6>
                        <p>Descripcion</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End testimonial-section-->

    <!-- End Login Section -->

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
