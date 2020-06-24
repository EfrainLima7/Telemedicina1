<%@ Page Title="Citas" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="Telemedina_2020.data.Citas" %>
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
                    <%--<li>
                        <a href="about.aspx">Acerca</a>
                    </li>--%>
                    <li>
                        <a href="Historial_Citas">Mis Citas</a>
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
    <section class="page-title text-center" style="background-image: url(images/background/3.jpg);">
        <div class="container">
            <div class="title-text">
                <h1>Reserve su Cita con uno de nuestros especialistas</h1>
                <ul class="title-menu clearfix">
                    <li>
                        <a href="index.aspx">inicio &nbsp;/</a>
                    </li>
                    <li>Citas</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Start about us area-->
    <section class="service-tab-section section">
            <form runat="server" method="post">
        <div class="outer-box clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!--Start single tab content-->
                            <div class="tab-content">
                                <div class="service-box tab-pane fade in active row">
                                    <asp:DataList ID="lstMedicosEspecialista" OnItemCommand="SeleccionarEspecialista" RepeatColumns="1" runat="server" DataKeyField="IdMedicoEspecialista">
                                        <ItemTemplate>
                                            <div class="col-md-6">
                                                <asp:ImageButton CssClass=" img-responsive" alt="" ID="imgEspecialista" runat="server" ImageUrl='<%# Eval("imagen") %>' />
                                            </div>
                                            <div class="col-md-6">
                                                <div class="contents">
                                                    <div class="section-title">
                                                        <h3>
                                                            <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                                            <asp:Label ID="lblApellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label>
                                                        </h3>
                                                    </div>
                                                    <asp:Label CssClass="h4" ID="lblNombreEspecialidad" runat="server" Text='<%# Eval("Especialidad") %>'></asp:Label><br />
                                                    <div class="text">
                                                        <asp:Label CssClass="h5" runat="server" Text="Descripcion:"></asp:Label>
                                                        <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescripcionEspecialidad") %>'></asp:Label>
                                                    </div>
                                                    <ul class="content-list">
                                                        <li>
                                                            <i class="fa fa-dot-circle-o"></i>
                                                            <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("Correo") %>'></asp:Label></li>
                                                        <li>
                                                            <i class="fa fa-dot-circle-o"></i>Datos de medico 2</li>
                                                        <li>
                                                            <i class="fa fa-dot-circle-o"></i>Datos de medico 3</li>
                                                    </ul>
                                                    <asp:Button CssClass="btn btn-style-one" Text="Sacar Cita" runat="server" />
                                                </div><br /><br /><br /><br />
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </div>
                            <!--End single tab content-->
                        </div>
                    </div>
                </div>
            
        </div>

            </form>
        <asp:Label Text="text" ID="mio" runat="server" />
    </section>
    <!--End about us area-->
    
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
