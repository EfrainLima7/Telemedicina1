<%@ Page Title="" Language="C#" MasterPageFile="~/administrador.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Telemedina_2020.admin.Historial" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
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
                                    <li role="presentation" >
                                        <a href="Nuevos_Especialistas.aspx" data-toggle="tab">Reg. Especialista</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="Agregar_Horarios.aspx">Reg. Horarios</a>
                                    </li>
                                    <li role="presentation" class="active">
                                        <a href="Historial.aspx" >Reg. Historial C.</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#diagnostic" data-toggle="tab">New</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="section-title text-center">
                        <h3>Registrar Historial Clinico del Paciente <span>Aqui</span></h3>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="contact-area style-two">
                            <div class="row">
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="Nombres"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="nombres" placeholder="Nombres" required="" runat="server" />
                                    </div>
                                    
                                </div>
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="Apellidos"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="apellidos" placeholder="Apellidos" required="" runat="server" />
                                    </div>

                                </div>

                                <div class="col-md-2 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="Historia Clinica"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="historia" placeholder="historia cli." required="" runat="server" />
                                    </div>
                                    
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="1 MOTIVOS DE LA CONSULTA"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="motivo" placeholder="Motivos"  runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="2 ANTECEDENTES "  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="antecper" placeholder="Antecedentes Personales"  runat="server" />
                                        <asp:TextBox ID="antecfam" placeholder="Antecedentes Familiares"  runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="4 ENFERMEDAD O PROBLEMA ACTUAL"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="enfermedadactual"   runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="5 REVISION ACTUAL "  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="revisionactual"   runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="6 CONSULTA MEDICA "  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="consultamedica"   runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="7 DIAGNOSTICOS"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="diagnostico1" placeholder="Diagnostico1"  runat="server" />
                                        <asp:TextBox ID="diagnostico2" placeholder="Diagnostico2"  runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="8 PLANES DE DIAGNOSTICO"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="plan1" placeholder="plan de diagnostico 1"  runat="server" />
                                        <asp:TextBox ID="plan2" placeholder="plan de diagnostico 2"  runat="server" />
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="Nombre de Medico Especialista"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="nombremedico" placeholder="Nombres" required="" runat="server" />
                                        <asp:Label Text="Apellido de Medico Especialista"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="apellidomedico" placeholder="Apellidos" required="" runat="server" />
                                        <asp:Label Text="Codigo de Medico Especialista"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="codigomedico" placeholder="codigo Medico" required="" runat="server" />
                                    </div>
                                    
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <asp:Label Text="RECETAS /MEDICAMENTOS"  runat="server" ForeColor="White" />
                                        <asp:TextBox ID="receta1" placeholder="Receta1"  runat="server" />
                                        <asp:TextBox ID="receta2" placeholder="Receta2"  runat="server" />
                                        <asp:TextBox ID="receta3" placeholder="Receta3"  runat="server" />
                                        <asp:TextBox ID="receta4" placeholder="Receta4"  runat="server" />
                                    </div>

                                </div>
                                <div class="col-md-2 col-sm-12 col-xs-12">
                                    <div class="form-group text-center">
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-main btn-white" Text="Registrar" BackColor="#48BDC5" OnClick="Button1_Click"  />

                                    </div>
                                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                                    <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                                </div>
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
