<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="Evaluacion.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.Evaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Content/js/calculosEvaluacion.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="container">
            <div class="row">
                <h4>Evaluación nutricional</h4>
                <asp:Label runat="server" ID="idPaciente"></asp:Label>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtFecha" CssClass="datepicker"></asp:TextBox>
                    <label>Fecha</label>
                </div>
            </div>
            <div class="row">
                <ul class="collapsible expandable">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">timeline</i>
                            Antropometría
                        </div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPeso" ClientIDMode ="Static"></asp:TextBox>
                                    <label>Peso</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtTalla" ClientIDMode="Static"></asp:TextBox>
                                    <label>Talla</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtImc" ClientIDMode="Static"></asp:TextBox>
                                    <label>IMC</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoIdeal" ClientIDMode="Static"></asp:TextBox>
                                    <label>Peso ideal</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoMin"></asp:TextBox>
                                    <label for="">Peso minimo</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoMax"></asp:TextBox>
                                    <label for="">Peso maximo</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoJust"></asp:TextBox>
                                    <label for="">Peso ajustado</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactor" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Value="0" Text="Seleccionar"></asp:ListItem>
                                        <asp:ListItem Value="1">22.5</asp:ListItem>
                                        <asp:ListItem Value="2">26</asp:ListItem>
                                        <asp:ListItem Value="3">27</asp:ListItem>
                                        <asp:ListItem Value="4">21.7</asp:ListItem>
                                        <asp:ListItem Value="5">25.5</asp:ListItem>
                                        <asp:ListItem Value="6">24.9</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor</label>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">accessibility</i>
                            Composición Corporal                            
                        </div>
                        <div class="collapsible-body">
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCB" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">CB (mm)</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPB" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">PB</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPSE" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">PSE</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCC"></asp:TextBox>
                                    <label for="">CC</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPT" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">PT (mm)</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPSI" ClientIDMode="Static"></asp:TextBox>
                                    <label>PSI</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPliegues" ClientIDMode="Static"></asp:TextBox>
                                    <label>Ʃ Pliegues</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCarpo"></asp:TextBox>
                                    <label>C.carpo</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtCMB" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">CMB (mm)</label>
                                </div>
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtAMB" ClientIDMode="Static"></asp:TextBox>
                                    <label>AMB (mm²)</label>
                                </div>
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtAGB" ClientIDMode="Static"></asp:TextBox>
                                    <label>AGB (mm²)</label>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>
                            Exámenes
                        </div>
                        <div class="collapsible-body">
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
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment_ind</i>
                            Diagnostico nutricional
                        </div>
                        <div class="collapsible-body">
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
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment_turned_in</i>
                            Requerimientos
                        </div>
                        <div class="collapsible-body">
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Inicio %</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtEnergia" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Energía</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorKcal" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Text="Seleccionar" Value="0"></asp:ListItem>
                                        <asp:ListItem Value="1">20</asp:ListItem>
                                        <asp:ListItem Value="2">25</asp:ListItem>
                                        <asp:ListItem Value="3">28</asp:ListItem>
                                        <asp:ListItem Value="4">30</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="">Factor Kcal/kg</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOPorcInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">CHO %</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOGrInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">gr</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtProtInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Prot</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorProtInicio" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Text="Seleccionar"></asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>1.2</asp:ListItem>
                                        <asp:ListItem>1.3</asp:ListItem>
                                        <asp:ListItem>1.5</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="">Factor gr/kg</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPPorcInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label>LIP %</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPGrInicio" ClientIDMode="Static"></asp:TextBox>
                                    <label>gr</label>
                                </div>
                            </div>
                            <div class="divider"></div>
                            <!--REQUERIMIENTOS DE TERMINO-->
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Termino %</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtEnergiaTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Energia</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorKcalTermino" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Text="Seleccionar"></asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="">Factor Kcal/kg</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOPorcTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">CHO %</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOGrTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">gr</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtProtTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label for="">Prot</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorProtTermino" ClientIDMode="Static">
                                        <asp:ListItem Enabled="True" Text="gr/kg"></asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>1.2</asp:ListItem>
                                        <asp:ListItem>1.3</asp:ListItem>
                                        <asp:ListItem>1.5</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="">Factor</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPPorcTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label>LIP %</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPGrTermino" ClientIDMode="Static"></asp:TextBox>
                                    <label>gr</label>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assistant_photo</i>
                            Meta nutricional
                        </div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="input-field col s12 m12 l12">
                                    <asp:TextBox runat="server" ID="txtMetaNut" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                                    <label for="">Ingresar Meta Nutricional</label>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">mode_edit</i>
                            Observaciones
                        </div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="input-field col s12 m12 l12">
                                    <asp:TextBox runat="server" ID="txtObservacion" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                                    <label for="">Ingresar Observación</label>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <button runat="server" id="btnGuardarEvaluacion" class="waves-effect waves-light btn blue darken-4 z-depth-4">Guardar</button>
            </div>
        </div>
    </div>
    <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Modal</a>

    <!-- Modal Structure -->
    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <p>A bunch of text</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>
</asp:Content>

