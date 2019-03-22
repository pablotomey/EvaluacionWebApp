<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="Evaluacion.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.Evaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Content/js/calculosEvaluacion.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="container">
            <div class="row">
                <h4>Evaluación nutricional</h4>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtFecha" CssClass="datepicker"></asp:TextBox>
                    <label>Fecha*</label>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFecha" Display="Dynamic" ErrorMessage="Favor Ingresar Fecha" ControlToValidate="txtFecha" ForeColor="Salmon"></asp:RequiredFieldValidator>
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
                            <div class="row grey-text text-darken-2">
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPeso" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Peso*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvPeso" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtPeso"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtTalla" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Talla*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvTalla" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtTalla"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtImc" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>IMC</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoIdeal" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Peso ideal</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoMin" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Peso minimo</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoMax" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Peso maximo</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtPesoJust" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Peso ajustado</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactor" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Value="0" Text="Elegir"></asp:ListItem>
                                        <asp:ListItem Value="1">22.5</asp:ListItem>
                                        <asp:ListItem Value="2">26</asp:ListItem>
                                        <asp:ListItem Value="3">27</asp:ListItem>
                                        <asp:ListItem Value="4">21.7</asp:ListItem>
                                        <asp:ListItem Value="5">25.5</asp:ListItem>
                                        <asp:ListItem Value="6">24.9</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFactor"
                                        ErrorMessage="Seleccionar Factor" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlFactor" InitialValue="0">
                                    </asp:RequiredFieldValidator>
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
                                    <asp:TextBox runat="server" ID="txtCB" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>CB (mm)</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPB" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>PB</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPSE" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>PSE</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCC" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>CC</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPT" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">PT (mm)</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPSI" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>PSI</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPliegues" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Ʃ Pliegues</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCarpo" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>C.carpo</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtCMB" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>CMB (mm)</label>
                                </div>
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtAMB" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>AMB (mm²)</label>
                                </div>
                                <div class="input-field col s6 m4 l4">
                                    <asp:TextBox runat="server" ID="txtAGB" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
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
                                    <asp:TextBox runat="server" ID="txtAlbulimia" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Albulimia</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCreatinina" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Creatinina</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtBalh" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">Balance Hídrico</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPco2" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">PCO2</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPafi" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label for="">PAFI</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLeuc" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Leucocitos</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtPC_react" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Proteina C reactiva</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtHemog" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Hemoglobina</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtHemat" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Hematrocito</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtTriglic" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Trigliceridos</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtGlicemia" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Glicemia</label>
                                </div>
                                <div class="input-field col s6 m4 l3">
                                    <asp:TextBox runat="server" ID="txtLactato" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Lactato</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m4 l2">
                                    <asp:TextBox runat="server" ID="txtUrea" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Urea</label>
                                </div>
                                <div class="input-field col s6 m4 l10">
                                    <asp:TextBox runat="server" ID="txtOtrosEx" AutoCompleteType="Disabled"></asp:TextBox>
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
                                    <asp:DropDownList runat="server" ID="ddlDiagnNut">
                                        <asp:ListItem Enabled="true" Value="0" Text="Estado"></asp:ListItem>
                                        <asp:ListItem>Enflaquecido</asp:ListItem>
                                        <asp:ListItem>Normal</asp:ListItem>
                                        <asp:ListItem>Sobre Peso</asp:ListItem>
                                        <asp:ListItem>Obeso</asp:ListItem>
                                        <asp:ListItem>Obeso tipo I</asp:ListItem>
                                        <asp:ListItem>Obeso tipo II</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvDiagnNut"
                                        ErrorMessage="Seleccionar Estado" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlDiagnNut" InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtDiagNut" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>Segun IMC*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvDiagnostico" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtDiagNut"></asp:RequiredFieldValidator>
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
                                    <asp:TextBox runat="server" ID="txtInicio" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Inicio %</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtEnergia" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Energía</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorKcal" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Value="0" Text="Elegir"></asp:ListItem>
                                        <asp:ListItem Value="1">20</asp:ListItem>
                                        <asp:ListItem Value="2">25</asp:ListItem>
                                        <asp:ListItem Value="3">28</asp:ListItem>
                                        <asp:ListItem Value="4">30</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor Kcal/kg*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFactorKcal"
                                        ErrorMessage="Seleccionar Factor" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlFactorKcal" InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOPorcInicio" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>CHO %*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvCHOPorcInicio" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtCHOPorcInicio"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOGrInicio" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>gr</label>
                                </div>
                            </div>
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtProtInicio" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Prot</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorProtInicio" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Value="0" Text="Elegir"></asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>1.2</asp:ListItem>
                                        <asp:ListItem>1.3</asp:ListItem>
                                        <asp:ListItem>1.5</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor gr/kg*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFactorProtInicio"
                                        ErrorMessage="Seleccionar Factor" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlFactorProtInicio" InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPPorcInicio" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>LIP %*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvLIPPorcInicio" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtLIPPorcInicio"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPGrInicio" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>gr</label>
                                </div>
                            </div>
                            <div class="divider"></div>
                            <!--REQUERIMIENTOS DE TERMINO-->
                            <div class="row s12">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtTermino" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Termino %</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtEnergiaTermino" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Energia</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorKcalTermino" ClientIDMode="Static">
                                        <asp:ListItem Enabled="true" Value="0" Text="Elegir"></asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor Kcal/kg*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFactorKcalTermino"
                                        ErrorMessage="Seleccionar Factor" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlFactorKcalTermino" InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOPorcTermino" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>CHO %*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvCHOPorcTermino" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtCHOPorcTermino"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtCHOGrTermino" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>gr</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtProtTermino" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
                                    <label>Prot</label>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:DropDownList runat="server" ID="ddlFactorProtTermino" ClientIDMode="Static">
                                        <asp:ListItem Enabled="True" Value="0" Text="Elegir"></asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>1.2</asp:ListItem>
                                        <asp:ListItem>1.3</asp:ListItem>
                                        <asp:ListItem>1.5</asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Factor gr/kg*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvDdlFactorProtTermino"
                                        ErrorMessage="Seleccionar Factor" ForeColor="salmon" Display="Dynamic"
                                        ControlToValidate="ddlFactorProtTermino" InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPPorcTermino" ClientIDMode="Static" AutoCompleteType="Disabled"></asp:TextBox>
                                    <label>LIP %*</label>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvLIPPorcTermino" Display="Dynamic" ForeColor="Salmon" ErrorMessage="Requerido(*)" ControlToValidate="txtLIPPorcTermino"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s6 m3 l3">
                                    <asp:TextBox runat="server" ID="txtLIPGrTermino" ClientIDMode="Static" ForeColor="Blue"></asp:TextBox>
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
                                    <label>Ingresar Meta Nutricional</label>
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
                                    <label>Ingresar Observación</label>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row">
                <button runat="server" id="btnGuardarEvaluacion" class="waves-effect waves-light btn blue darken-4 z-depth-4" onserverclick="btnGuardarEvaluacion_Click">Guardar</button>
                <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Información</a>
                <asp:Label runat="server" ID="lblResultado"></asp:Label>
            </div>
        </div>
    </div>

    <!-- Modal Structure -->
    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>Evaluación Nutricional</h4>
            <p>Formulario para ingreso de evaluación nutricional de tu paciente.
                En esta sección se realizan los cálculos automáticos de ciertos parámetros
                a medida que se ingresan datos, la información oblgatoria por ingresar está marcada
                con un *, la toma de composición corporal y exámenes se puede dejar en blanco si no es requerido.
            </p>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Entiendo</a>
        </div>
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" ID="pnlConfirmar" CssClass="modalPopup" Style="display: none">
                <div class="section"></div>
                <div class="container">
                    <div class="row">
                        <div class="col l12 center">
                            <asp:Label runat="server" ID="lblConfirmacion"></asp:Label>
                        </div>
                    </div>
                    <div class="row center">
                        <button class="btn waves-effect waves-light blue darken-4 btn-small" runat="server" id="btnConfirmar" onserverclick="btnConfirmar_Click">Aceptar<i class="material-icons right">check</i></button>
                    </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Label runat="server" ID="lblOculto"></asp:Label>
    <ajaxToolkit:ModalPopupExtender runat="server"
        TargetControlID="lblOculto"
        ID="mpeConfirmar"
        Enabled="true"
        OkControlID="btnConfirmar"
        OnOkScript="__doPostback('btnConfirmar'.'')"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlConfirmar">
    </ajaxToolkit:ModalPopupExtender>

    <asp:UpdatePanel ID="udpSendError" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" ID="pnlSendError" CssClass="modalPopup" Style="display: none">
                <div class="section"></div>
                <div class="container">
                    <div class="row">
                        <div class="col l12 center">
                            <asp:Label runat="server" ID="lblErrorMessage"></asp:Label>
                        </div>
                    </div>
                    <div class="row center">
                        <button class="btn waves-effect waves-light blue darken-4 btn-small" runat="server" id="btnAceptarSendError" onserverclick="btnAceptarSendError_Click">Aceptar<i class="material-icons right">check</i></button>
                    </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Label runat="server" ID="lblOculto2"></asp:Label>
    <ajaxToolkit:ModalPopupExtender runat="server"
        TargetControlID="lblOculto2"
        ID="mpeSendError"
        Enabled="true"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlSendError">
    </ajaxToolkit:ModalPopupExtender>
</asp:Content>

