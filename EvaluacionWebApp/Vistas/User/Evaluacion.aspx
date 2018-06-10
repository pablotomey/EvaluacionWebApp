<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="Evaluacion.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.Evaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="container">
            <h5 class="grey-text">Evaluación Nutricional</h5>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="input-field col s12 m4 l4">
                <asp:TextBox runat="server" ID="txtFecha" CssClass="datepicker"></asp:TextBox>
                <label for="">Fecha</label>
            </div>
            <div class="input-field col s12 m8 l8">
                <asp:TextBox runat="server" ID="txtNomNutr"></asp:TextBox>
                <label for="">Nutricionista</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel z-depth-2">
                <div class="row">
                    <i class="material-icons small blue-text">account_circle</i>
                    <label>
                        <h6>Identificacion del paciente</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtNombrePaciente"></asp:TextBox>
                        <label for="">Nombre</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApepatPaciente"></asp:TextBox>
                        <label for="">Apellido Paterno</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApematPaciente"></asp:TextBox>
                        <label for="">Apellido Materno</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s3 m4 l4">
                        <asp:TextBox runat="server" ID="txtEdadPaciente"></asp:TextBox>
                        <label for="">Edad</label>
                    </div>
                    <div class="input-field col s3 m4 l4">
                        <asp:TextBox runat="server" ID="txtSexo"></asp:TextBox>
                        <label for="">Sexo</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtRutPaciente"></asp:TextBox>
                        <label for="">Rut</label>
                    </div>
                </div>
                <div>
                    <div class="row s12">
                        <div class="input-field col s4 m4 l4">
                            <asp:TextBox runat="server" ID="txtNumFicha"></asp:TextBox>
                            <label for="">Nº Ficha</label>
                        </div>
                        <div class="input-field col s8 m8 l8">
                            <asp:TextBox runat="server" ID="txtDiagnostico" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                            <label for="">Diagnostico</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Antopometria</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtPeso"></asp:TextBox>
                        <label for="">Peso</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtTalla"></asp:TextBox>
                        <label for="">Talla</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtImc"></asp:TextBox>
                        <label for="">IMC</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtPesoIdeal"></asp:TextBox>
                        <label for="">Peso ideal</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:DropDownList runat="server" ID="slcFactor">
                            <asp:ListItem Enabled="true" Text="Seleccionar factor"></asp:ListItem>
                            <asp:ListItem>22,5</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>21,7</asp:ListItem>
                            <asp:ListItem>25,5</asp:ListItem>
                            <asp:ListItem>24,9</asp:ListItem>
                        </asp:DropDownList>
                        <label>Factor</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Composición Corporal</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtCB"></asp:TextBox>
                        <label for="">CB (mm)</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPB"></asp:TextBox>
                        <label for="">PB</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPSB"></asp:TextBox>
                        <label for="">PSE</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtCC"></asp:TextBox>
                        <label for="">CC</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPT"></asp:TextBox>
                        <label for="">PT (mm)</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPSI"></asp:TextBox>
                        <label>PSI</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPliegues"></asp:TextBox>
                        <label>Ʃ Pliegues</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtCarpo"></asp:TextBox>
                        <label>C.carpo</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtCMB"></asp:TextBox>
                        <label for="">CMB (mm)</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtAMB"></asp:TextBox>
                        <label>AMB (mm²)</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtAGB"></asp:TextBox>
                        <label>AGB (mm²)</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Exámenes</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtAlbulimia"></asp:TextBox>
                        <label for="">Albulimia</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtCreatinina"></asp:TextBox>
                        <label for="">Creatinina</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtBalh"></asp:TextBox>
                        <label for="">Balance Hídrico</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPco2"></asp:TextBox>
                        <label for="">PCO2</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPafi"></asp:TextBox>
                        <label for="">PAFI</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtLeuc"></asp:TextBox>
                        <label>Leucocitos</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtPC_react"></asp:TextBox>
                        <label>Proteina C reactiva</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtHemog"></asp:TextBox>
                        <label>Hemoglobina</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l3">
                        <asp:TextBox runat="server" ID="txtHemat"></asp:TextBox>
                        <label for="">Hematrocito</label>
                    </div>
                    <div class="input-field col s6 m4 l3">
                        <asp:TextBox runat="server" ID="txtTriglic"></asp:TextBox>
                        <label>Trigliceridos</label>
                    </div>
                    <div class="input-field col s6 m4 l3">
                        <asp:TextBox runat="server" ID="txtGlicemia"></asp:TextBox>
                        <label>Glicemia</label>
                    </div>
                    <div class="input-field col s6 m4 l3">
                        <asp:TextBox runat="server" ID="txtLactato"></asp:TextBox>
                        <label>Lactato</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l2">
                        <asp:TextBox runat="server" ID="txtUrea"></asp:TextBox>
                        <label for="">Urea</label>
                    </div>
                    <div class="input-field col s6 m4 l10">
                        <asp:TextBox runat="server" ID="txtOtrosEx"></asp:TextBox>
                        <label>Otros exámenes</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Diagnostico Nutricional</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m3 l3">
                        <asp:DropDownList runat="server" ID="slcDiagnNut">
                            <asp:ListItem Enabled="true" Text="Estado"></asp:ListItem>
                            <asp:ListItem>Enflaquecido</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Sobre Peso</asp:ListItem>
                            <asp:ListItem>Obeso</asp:ListItem>
                            <asp:ListItem>Obeso tipo I</asp:ListItem>
                            <asp:ListItem>Obeso tipo II</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <asp:TextBox runat="server" ID="txtDiagNut"></asp:TextBox>
                        <label>Segun IMC</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Meta Nutricional (Sin BN)</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s12 m12 l12">
                        <asp:TextBox runat="server" ID="txtMetaNut" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                        <label for="">Ingresar Meta Nutricional</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel">
                <div class="row">
                    <i class="material-icons small blue-text">straighten</i>
                    <label>
                        <h6>Observaciones</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s12 m12 l12">
                        <asp:TextBox runat="server" ID="txtObservacion" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                        <label for="">Ingresar Observación</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row center">
        <asp:Button runat="server" ID="btnGuardarEv" CssClass="waves-effect waves-light btn blue darken-4 z-depth-4" Text="Guardar" />
    </div>
</asp:Content>

