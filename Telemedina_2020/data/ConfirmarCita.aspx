<%@ Page Title="" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="ConfirmarCita.aspx.cs" Inherits="Telemedina_2020.data.ConfirmarCita" %>
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
                        <a href="HistorialCitas.aspx">Mis Citas</a>
                    </li>
                    <li>
                        <a href="Telemedicina.aspx">Empezar Videoconferencia</a>
                    </li>
                    <li>
                        <a href="Documentos.aspx">Documentos</a>
                    </li>
                    <%--</li>
                        <li>
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

    <!-- confirm-section-->
    <section class="testimonial-section" style="background: url(images/testimonials/1.jpg);">
        <div class="container">
            <div class="section-title text-center">
                <h3>    Reserve su cita de Telemedicina               
                    <span>Seleccione dia y hora</span>
                </h3>
            </div>
            <div class="testimonial-carousel">
                <!--Slide Item-->
                <form method="post" runat="server">
                    <div class="slide-item">
                        <div class="inner-box text-center">
                            <div class="image-box">
                                <figure>
                                    <asp:Image ID="imagen" ImageUrl="images/testimonials/3.png" runat="server" alt="" />
                                </figure>
                            </div>
                            <h6><asp:Label ID="nombre" runat="server" />
                               <asp:Label ID="apellido" runat="server" /><br />
                                <asp:Label ID="especialidad" runat="server" />                                
                            </h6>
                            <p><asp:Label ID="descripcion" runat="server" /><br />
                                <asp:Label ID="correo" runat="server" />
                            </p>
                            <div class="form-group">
                                <h3>Elige La Fecha de Cita</h3>
                                <h4><asp:TextBox runat="server" ID="Fechas" required="" TextMode="Date" Width="100%" BackColor="#66CCFF" /></h4>
                                <h4>Elige La Hora de Cita </h4>
                                    <h4><asp:DropDownList ID="DwHoras" required="" runat="server"  Width="100%" BackColor="#66CCFF">
                                    </asp:DropDownList></h4>
                            </div>
                            <asp:Button ID="aceptar" CssClass="btn btn-style-one" Text="Continuar" runat="server" OnClick="aceptar_Click" /><br />
                            <asp:Label ID="Mensajes" runat="server" BorderColor="Red" />
                            <asp:Label ID="IdMedicoEspecialista" Text="text" runat="server" Visible="False" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <asp:Label ID="mio" Text="text" runat="server" />
    <!--End confirm-section-->    

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
