<%@ Page Title="" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="Historial_Citas.aspx.cs" Inherits="Telemedina_2020.data.Historial_Citas" %>
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
                        <a href="Telemedicina.aspx">Empezar Videoconferencia</a>
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

    <!--Page Title-->
    <section class="page-title text-center" style="background-image: url('images/background/3.jpg');">
        <div class="container">
            <div class="title-text"> 
                <h1>Historial de mis citas</h1>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Teleconferencia-section--> 
    <section class="cta" " >
        <div class="container">
            <!-- Animated -->
            <div class="animated fadeIn">
                <div class="clearfix"></div>
                <!-- Orders -->
                <div class="orders">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <form runat="server" method="post">
                                            <table class="table ">
                                                <asp:TextBox placeholder="Inserte codigo de cita a Cancelar" ID="insertid" runat="server" />
                                                <asp:Button Text="Dar de Baja la Cita" CssClass="btn btn-style-one" runat="server" OnClick="Unnamed1_Click" />
                                                
                                               <asp:Label ID="mensaje" runat="server" />
                                            </table>
                                            <asp:GridView ID="grvCitas" runat="server" DataKeyNames="IdCita" Width="100%" CssClass="" OnSelectedIndexChanged="grvCitas_SelectedIndexChanged">
                                                
                                            </asp:GridView>
                                        </form>
                                    </div>
                                    <!-- /.table-stats -->
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col-lg-8 -->
                    </div>
                </div>
                <!-- /.orders -->
            </div>
            <!-- .animated -->
        </div>
        <asp:Label ID="mio" Text="text" runat="server" />



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
