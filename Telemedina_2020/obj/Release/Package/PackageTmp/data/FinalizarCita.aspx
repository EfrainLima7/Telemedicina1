<%@ Page Title="" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="FinalizarCita.aspx.cs" Inherits="telemedicina.data.FinalizarCita" %>
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
    <section class="cta">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3>Informacion
                       
                            <span>De la cita</span>
                        </h3>
                        <%--<p>Leverage agile frameworks to provide a robust synopsis for high level overv-
                        <br>iews. Iterative approaches to corporate strategy...</p>--%>
                    </div>
                    <form  method="post" runat="server">
                    <div class="cta-block">
                        <div class="emmergency item">
                            <i class="fa fa-user"></i>
                            <h2>Datos Del Medico</h2>
                            <a><asp:Label ID="name"  Text="text" runat="server" /></a>                            
                            <a><asp:Label ID="apellido"  Text="text" runat="server" /></a>
                            <a><asp:Label ID="especialidad"  Text="text" runat="server" /></a> 
                        </div>                        
                        <div class="working-time item">
                            <i class="fa  fa-clock-o"></i>
                            <h2>Fecha y Hora de Cita</h2>
                            <ul class="w-hours">
                                <li>Fecha:
                                    <asp:Label ID="fecha" Text="text" runat="server" />
                                </li>
                                <li><asp:Label ID="idCita" Text="id" runat="server" Visible="false" /></li> 
                            </ul>                  
                        </div>
                        <div class="top-doctor item">
                            <i class="fa  fa-hospital-o"></i>
                            <h2>Finalizar Cita</h2>
                            <p><asp:Label ID="correo"  Text="text" runat="server" /></p>
                            <asp:Button ID="btnEliminar" CssClass="btn btn-main bg-danger h4" Text="Cancelar" runat="server" OnClick="btnEliminar_Click" ForeColor="White" BackColor="#FF9966" />
                            <a><asp:Button CssClass="btn btn-main bg-success" ID="acetpar" Text="Finalizar Reserva Cita"  runat="server" OnClick="acetpar_Click" ForeColor="Black" /></a><br />
                            <asp:Label  runat="server" ID="mensajes" />
                        </div>
                    </div>
                    </form>
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
