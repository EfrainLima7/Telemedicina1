<%@ Page Title="" Language="C#" MasterPageFile="~/administrador.Master" AutoEventWireup="true" CodeBehind="Historial_Citas_Especialista.aspx.cs" Inherits="Telemedina_2020.admin.Historial_Citas_Especialista" %>
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
                    <li >
                        <a href="../admin/index.aspx">Inicio</a>
                    </li>
                    <li class="active">
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
    
    <!-- Promo Video -->
    <section class="promo-video">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="block text-center">
                        <h6>Telemedicina HV</h6>
                        <h1>Historial de Citas
                            <br>
                            Recientes HV
                        </h1>
                        <asp:Label ID="mensaje" Text="text" runat="server" ForeColor="#FF3300" />
                        <form runat="server" method="post">
                            <asp:GridView ID="cita" runat="server" DataKeyNames="IdCita" Width="100%" BackColor="#66CCFF" ForeColor="White" OnSelectedIndexChanged="cita_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Finalizar" FooterStyle-ForeColor=" white" ControlStyle-BackColor="#00CC66" />
                                </Columns>
                            </asp:GridView>
                        </form>
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
