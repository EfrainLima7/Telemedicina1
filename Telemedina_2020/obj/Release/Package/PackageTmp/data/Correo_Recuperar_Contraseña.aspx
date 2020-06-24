<%@ Page Title="" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="Correo_Recuperar_Contraseña.aspx.cs" Inherits="telemedicina.data.Correo_Recuperar_Contraseña" %>
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
    <section class="page-title text-center" style="background-image: url('images/background/3.jpg');">
        <div class="container">
            <div class="title-text">
                <h1>Recuperar Contraseña</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>Recuperar Contraseña</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <!-- Login Section -->
    <section class="blog-section section style-three pb-0">
        <div class="container">            
            <div class="row">
                <div class="section-title text-center">
                            <h3>Ingrese el correo del cual va recuperar contraseña <span>Aqui</span></h3>
                        </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="contact-area style-two">

                        <form runat="server" name="contact_form" class="default-form contact-form" method="post">
                            <div class="row">
                                <div class="col-md-8 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:TextBox type="Email" ID="correo" placeholder="Correo" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" CssClass="" Text="Enviar" BackColor="#48BDC5" OnClick="Button1_Click"  />
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label ID="messaje" Text="" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:Label ID="lblResultadoContraseña" Text="" runat="server" />
                                        <asp:Label ID="lblEstado_de_envio" Text="" ForeColor="Red" runat="server" />
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

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>
    <!--End Script-->
</asp:Content>
