<%@ Page Title="Telemedicina" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="Telemedicina.aspx.cs" Inherits="Telemedina_2020.data.Telemedicina" %>
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
                        <a href="Citas.aspx">Inicio</a>
                    </li>
                    <%--<li>
                        <a href="about.aspx">Acerca</a>
                    </li>--%>
                    <li>
                        <a href="   Citas.aspx">Mis Citas</a>
                    </li>
                    <li>
                        <a href="Historial_Citas.aspx">Empezar Videoconferencia</a>
                    </li>
                    <li>
                        <a href="#">Documentos</a>
                    </li>
                    <%--<li>
                        <a href="Citas.aspx">Sacar Cita</a>
                    </li>--%>
                    <li>
                        <a>
                            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="index.aspx">Salir</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--End Main Header -->
    <!-- Teleconferencia-section-->
    <section class="testimonial-section" style="background: url(images/testimonials/1.jpg);">
        <div class="container">
            <div class="section-title text-center">
                <h3>    Empezar VideoConferencia
               
                    <span>Telemedicina</span>
                </h3>
            </div>
            <div class="testimonial-carousel">
                <!--Slide Item-->
                <form method="post" runat="server">
                    <div class="slide-item">
                        <div class="inner-box text-center">
                            <div class="image-box">
                                <figure>
                                    <asp:Image ID="imagen" ImageUrl="images/testimonials/3.png" runat="server" />
                                    
                                </figure>
                            </div>                            
                            <h6><asp:Label id="nombres" runat="server" /> </h6>
                            <h6><asp:Label id="especialidad" runat="server" /> </h6>
                            <h6><asp:Label id="fecha" runat="server" /><asp:Label id="hora" runat="server" /><asp:Label id="estado" runat="server" /></h6>
                            <p>Empieza tu videoconferenecia con nuestro medico escpecialista ,puedes  ingresar a la sala haciendo click en el siguiente botón "Empezar"</p>
                            <p><asp:Label ID="idcita" runat="server" /></p>
                            <asp:Button Text="Empezar" CssClass="btn btn-style-one" runat="server" OnClick="Unnamed1_Click" /><br />
                            <asp:Label id="mis" runat="server"  />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <asp:Label ID="mio" Text="text" runat="server" />
        <asp:Label ID="url"  runat="server" />
        
    </section>
    <!--End Teleconferencia-section-->
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
