<%@ Page Title="Citas" Language="C#" MasterPageFile="~/pricipal.Master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="telemedicina.data.Citas" %>
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
                        <a href="#">Mis Citas</a>
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
    

    <!--team section-->
    <section class="team-section section">
        <div class="container">
            <%--<div class="section-title text-center">
                <h3>Medicos Especialistas
                   <span>Saque su Cita</span>
                </h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem illo, rerum
                       
                    natus nobis deleniti doloremque minima odit voluptatibus ipsam animi?
                </p>
            </div>--%>
            <div class="row">
                <form method="post" runat="server">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <asp:DataList ID="lstMedicosEspecialista" OnItemCommand="SeleccionarEspecialista" RepeatColumns="1" runat="server" RepeatDirection="Horizontal" DataKeyField="IdMedicoEspecialista" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <asp:ImageButton CssClass="img-responsive" alt="doctor" ID="imgEspecialista" runat="server" ImageUrl='<%# Eval("imagen") %>' />
                                    <div class="contents text-center">
                                        <asp:Label CssClass="h4" ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label></h3>            
                                        <asp:Label CssClass="h4" ID="lblApellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblNombreEspecialidad" runat="server" Text='<%# Eval("NombreEspecialidad") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblCorreo" runat="server" Text='<%# Eval("Correo") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="Label29" runat="server" Text="Descripcion:"></asp:Label><br />
                                        <asp:Label CssClass="h5" ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label><br />
                                        <asp:Button CssClass="btn btn-main" Text="Sacar Cita" runat="server" />
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <asp:DataList ID="lstMedicosEspecialista1" OnItemCommand="SeleccionarEspecialista1" RepeatColumns="1" runat="server" RepeatDirection="Horizontal" DataKeyField="IdMedicoEspecialista" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <asp:ImageButton CssClass="img-responsive" alt="doctor" ID="imgEspecialista" runat="server" ImageUrl='<%# Eval("imagen") %>' />
                                    <div class="contents text-center">
                                        <asp:Label CssClass="h4" ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label></h3>            
                                        <asp:Label CssClass="h4" ID="lblApellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblNombreEspecialidad" runat="server" Text='<%# Eval("NombreEspecialidad") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblCorreo" runat="server" Text='<%# Eval("Correo") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="Label29" runat="server" Text="Descripcion:"></asp:Label><br />
                                        <asp:Label CssClass="h5" ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label><br />
                                        <asp:Button CssClass="btn btn-main" Text="Sacar Cita" runat="server" />
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <asp:DataList ID="lstMedicosEspecialista2" OnItemCommand="SeleccionarEspecialista2" RepeatColumns="1" runat="server" RepeatDirection="Horizontal" DataKeyField="IdMedicoEspecialista" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <asp:ImageButton CssClass="img-responsive" alt="doctor" ID="imgEspecialista" runat="server" ImageUrl='<%# Eval("imagen") %>' />
                                    <div class="contents text-center">
                                        <asp:Label CssClass="h4" ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label></h3>            
                                        <asp:Label CssClass="h4" ID="lblApellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblNombreEspecialidad" runat="server" Text='<%# Eval("NombreEspecialidad") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="lblCorreo" runat="server" Text='<%# Eval("Correo") %>'></asp:Label><br />
                                        <asp:Label CssClass="h4" ID="Label29" runat="server" Text="Descripcion:"></asp:Label><br />
                                        <asp:Label CssClass="h5" ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label><br />
                                        <asp:Button CssClass="btn btn-main" Text="Sacar Cita" runat="server" />
                                        
                                    </div>
                                </ItemTemplate>
                                
                            </asp:DataList>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!--End team section-->
    <asp:Label Text="text"  ID="mio" runat="server" />
    
    <!--Script-->
    
    <script src="plugins/jquery.js"></script>
    <script src="plugins/bootstrap.min.js"></script>
    <script src="plugins/bootstrap-select.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick/slick.min.js"></script>
    <!-- FancyBox -->
    <script src="plugins/fancybox/jquery.fancybox.min.js"></script>>

    <script src="plugins/validate.js"></script>
    <script src="plugins/wow.js"></script>
    <script src="plugins/jquery-ui.js"></script>
    <script src="plugins/timePicker.js"></script>
    <script src="js/script.js"></script>
    <!--End Script-->
</asp:Content>
