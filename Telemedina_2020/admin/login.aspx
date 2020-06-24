<%@ Page Title="" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Telemedina_2020.admin.login" %>
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
                        <a href="../data/index.aspx">Inicio</a>
                    </li>
                    <li>
                        <a href="../data/about.aspx">Acerca</a>
                    </li>
                    <li>
                        <a href="../data/service.aspx">Servicio</a>
                    </li>
                    <li>
                        <a href="../data/gallery.aspx">Galeria</a>
                    </li>
                    <li>
                        <a href="../data/contact.aspx">Contacto</a>
                    </li>
                    <li>
                        <a href="../data/login.aspx">Sacar Cita</a>
                    </li>
                    <li>
                        <a href="../data/login.aspx">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--End Main Header -->
    <!--Page Title-->
    <section class="page-title text-center" style="background-image: url('images/background/3.jpg');">
        <div class="container">
            <div class="title-text">
                <h1>Iniciar Sesión Personal de Salud </h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="../data/index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>iniciar sesión Personal de Salud</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <!-- Login Section -->
    <section class="blog-section section style-three pb-0">
        <div class="container">
            <div class="section-title text-center">
                <p>
                    Acceso al sistema Solo personal Autorizado                  
                </p>
            </div>
            <div class="row">
                <div class="section-title text-center">
                            <h3>Iniciar Sesión Personal de Salud <span>Aqui</span></h3>
                        </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="contact-area style-two">

                        <form runat="server" name="contact_form" class="default-form contact-form" method="post">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:TextBox type="Email" ID="correo" placeholder="Correo" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:TextBox type="password" ID="contraseña" placeholder="Contraseña" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group text-center">
                                        <asp:Button ID="Button1" runat="server" CssClass="" Text="Iniciar Sesión" BackColor="#48BDC5" OnClick="Button1_Click" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblMessaje"  runat="server" ForeColor="Red"></asp:Label>
                                        <asp:Label runat="server" ID="message" ForeColor="Red" />
                                    </div>                                    
                                </div>                                
                            </div>
                        </form>
                    </div>
                </div>                
            </div>
        </div>
    </section>
    <!-- End Login Section -->

    <!--Script-->
    <script src="plugins/jquery.js"></script>
    <script src="plugins/bootstrap.min.js"></script>
    <script src="plugins/bootstrap-select.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick/slick.min.js"></script>
    <!-- FancyBox -->
    <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
    <!-- Google Map -->

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>
    <!--End Script-->
</asp:Content>
