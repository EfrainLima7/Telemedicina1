<%@ Page Title="" Language="C#" MasterPageFile="~/administrador.Master" AutoEventWireup="true" CodeBehind="Reporte_H.aspx.cs" Inherits="Telemedina_2020.admin.Reporte_H" %>

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
                        <h3>Ficha de Historial Clinica <span>Aqui</span></h3>
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
                                <%--<h3>Medicos
						
                                <span>Especialistas</span>
                                </h3>
                                <p>
                                    En esta seccon podras ver todo los medicos especialistas Registrados
                                <br>
                                    En el Sistema--%>
                                
                               <%-- </p>--%>

                                
                                <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="825px">
                                    <LocalReport ReportPath="admin\Historial.rdlc">
                                       
                                        <DataSources>
                                            <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="rep" />
                                        </DataSources>
                                       
                                    </LocalReport>
                                </rsweb:ReportViewer>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BASEADACURSOConnectionString2 %>" SelectCommand="reporte_historial" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
