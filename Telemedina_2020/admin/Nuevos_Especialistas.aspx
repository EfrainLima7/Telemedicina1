<%@ Page Title="" Language="C#" MasterPageFile="~/administrador.Master" AutoEventWireup="true" CodeBehind="Nuevos_Especialistas.aspx.cs" Inherits="Telemedina_2020.admin.Nuevos_Especialistas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server" name="contact_form" class="default-form contact-form" method="post">

        <!-- Registro Section -->
        <section class="testimonial-section" style="background: url(images/testimonials/1.jpg);">
            <div class="container">
                <div class="row">
                    <div class="outer-box clearfix">
                        <div class="col-md-12">
                            <!-- Nav tabs -->
                            <div class="tabs">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation">
                                        <a href="index.aspx">Inicio</a>
                                    </li>
                                    <li role="presentation" class="active">
                                        <a href="Nuevos_Especialistas.aspx" data-toggle="tab">Reg. Especialista</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="Agregar_Horarios.aspx">Reg. Horarios</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="Historial.aspx" >Reg. Historial C.</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="Reporte_H.aspx" >New</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="section-title text-center">
                        <h3>Registrar Nuevo Medico Especialista <span>Aqui</span></h3>
                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="contact-area style-two">
                            <div class="row">
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="nombres" placeholder="Nombres" required="" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="apellidos" placeholder="Apellidos" required="" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="text" ID="telefono" placeholder="Teléfono" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="text" ID="especialidad" placeholder="Especialidad" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:TextBox type="text" ID="Descripcion" placeholder="Descripcion Especialidad" required="" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="Email" ID="correo" placeholder="Correo" required="" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="password" ID="contraseña" placeholder="Nueva Cotraseña" required="" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox type="password" ID="contraseñarep" placeholder="Repita la Cotraseña" required="" runat="server"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group text-center">
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-main btn-white" Text="Registrar" BackColor="#48BDC5" OnClick="Button1_Click" />

                                    </div>
                                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                    <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="appointment-image-holder">
                            <div class="team-member">
                                <%--<asp:FileUpload ID="fupload" runat="server" />--%>
                                <asp:FileUpload ID="FileSubirimagen" runat="server"  /><br />                   
                                <asp:Image ID="image1" ImageUrl="images/team/doctor-lab-3.jpg" alt="doctor" CssClass="img-responsive" runat="server" />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Registro Section -->

        <!--about section-->
        <section class="feature-section section bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div class="image-content">
                            <div class="section-title text-center">
                                <h3>Medicos
						
                                <span>Especialistas</span>
                                </h3>
                                <p>
                                    En esta seccon podras ver todo los medicos especialistas Registrados
                                <br>
                                    En el Sistema
                                
                                </p>
                                <asp:GridView ID="Listar" runat="server" Width="100%" BackColor="#66CCFF" ForeColor="White">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End about section-->

    </form>
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
