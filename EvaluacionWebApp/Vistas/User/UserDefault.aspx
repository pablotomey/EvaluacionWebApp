<%@ Page Title="Bienvenido Usuario" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserDefault.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.UserDefault" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section">
        <asp:Label runat="server" ID="lblSave"></asp:Label>
    </div>
    <div class="container">
        <div class="row">
            <div class="card-panel white">
                <div class="card-content">
                    <div class="row">
                        <h5 class="card-title grey-text">Pacientes ingresados en el sistema</h5>
                    </div>
                    <div class="row">
                        <button runat="server" id="btnAddPaciente" class="waves-effect waves-light btn orange darken-1"><i class="material-icons right">add</i>Agregar nuevo paciente</button>
                        <asp:Button runat="server" ID="updateGrid" Text="update" OnClick="updateGrid_Click" Visible="false"/>
                    </div>
                    <div class="row">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:GridView runat="server" ID="grdTablaPacientes" CssClass="highlight" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros" OnRowCommand="grdTablaPacientes_RowCommand">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller">
                                            <ItemTemplate>
                                                <asp:Label ID="lblIdPaciente" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="nombrePaciente" HeaderText="Nombre" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="apepatPaciente" HeaderText="A.Paterno" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="apematPaciente" HeaderText="A.Materno" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="rutPaciente" HeaderText="Rut" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="edadPaciente" HeaderText="Edad" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="SexoPaciente" HeaderText="Sexo" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="diagnosticoPaciente" HeaderText="Diagnostico" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="numFicha" HeaderText="Ficha" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="estadoPaciente" HeaderText="Estado" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="FechaCreacion" HeaderText="Creación" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:BoundField DataField="usuario" HeaderText="Nutricionista" HeaderStyle-Font-Size="Smaller" ItemStyle-Font-Size="Smaller" />
                                        <asp:TemplateField HeaderText="Evaluacion" HeaderStyle-Font-Size="Smaller">
                                            <ItemTemplate>
                                                <asp:ImageButton runat="server" ID="btnEvaluacion" ImageUrl="~/Content/img/Evaluacion.png" CommandName="Evaluacion" CommandArgument="<%#((GridViewRow) Container).RowIndex %>" />
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="updateGrid" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:Panel runat="server" ID="pnlAddPaciente" CssClass="modalPopup" Style="display: none">
        <div class="section"></div>
        <div class="container">
            <div class="row s12">
                <div class="input-field col s6 m4 l4">
                    <asp:TextBox runat="server" ID="txtNombrePaciente"></asp:TextBox>
                    <label for="">Nombre*</label>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombrePaciente" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6 m4 l4">
                    <asp:TextBox runat="server" ID="txtApepatPaciente"></asp:TextBox>
                    <label for="">Apellido Paterno*</label>
                    <asp:RequiredFieldValidator ID="rfvApepat" runat="server" ControlToValidate="txtApepatPaciente" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6 m4 l4">
                    <asp:TextBox runat="server" ID="txtApematPaciente"></asp:TextBox>
                    <label for="">Apellido Materno*</label>
                    <asp:RequiredFieldValidator ID="rfvApemat" runat="server" ControlToValidate="txtApematPaciente" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row s12">
                <div class="input-field col s3 m4 l2">
                    <asp:TextBox runat="server" ID="txtEdadPaciente" pattern="^[0-9]*"></asp:TextBox>
                    <label for="">Edad</label>
                </div>
                <div class=" input-field col s3 m4 l3">
                    <p>
                        <label>
                            <asp:RadioButton ID="rbMasculino" runat="server" GroupName="sexo" />
                            <span>Masculino</span>
                        </label>
                    </p>
                </div>
                <div class="input-field col s6 m4 l3">
                    <p>
                        <label>
                            <asp:RadioButton ID="rbFemenino" runat="server" GroupName="sexo" />
                            <span>Femenino</span>
                        </label>
                    </p>
                </div>
                <div class="input-field col s6 m4 l4">
                    <asp:TextBox runat="server" ID="txtRutPaciente"></asp:TextBox>
                    <label for="">Rut*</label>
                    <asp:RequiredFieldValidator ID="rfvRut" runat="server" ControlToValidate="txtRutPaciente" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:Label runat="server" ID="lblRutInvalido" ForeColor="Salmon"></asp:Label>
                </div>
            </div>
            <div>
                <div class="row s12">
                    <div class="input-field col s4 m4 l4">
                        <asp:TextBox runat="server" ID="txtNumFicha" pattern="^[0-9]*"></asp:TextBox>
                        <label for="">Nº Ficha*</label>
                        <asp:RequiredFieldValidator ID="rfvFicha" runat="server" ControlToValidate="txtNumFicha" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s8 m8 l8">
                        <asp:TextBox runat="server" ID="txtDiagnostico" CssClass="materialize-textarea" TextMode="MultiLine"></asp:TextBox>
                        <label for="">Diagnostico*</label>
                        <asp:RequiredFieldValidator ID="rfvDeiagnostico" runat="server" ControlToValidate="txtDiagnostico" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <button runat="server" id="btnSavePaciente" class="waves-effect waves-light btn blue darken-4 z-depth-2 btn-small" onserverclick="btnSavePaciente_Click"><i class="material-icons right">check</i>Guardar</button>
                    <button runat="server" id="btnCancelSave" class="waves-effect waves-light btn red darken-1 z-depth-2 btn-small" onserverclick="btnCancelSave_Click"><i class="material-icons right">cancel</i>Cancelar</button>
                    <asp:Label runat="server" ID="lblResultado" ForeColor="Salmon"></asp:Label>
                </div>
            </div>
        </div>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender
        runat="server"
        TargetControlID="btnAddPaciente"
        ID="modalAddPaciente"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlAddPaciente">
    </ajaxToolkit:ModalPopupExtender>
</asp:Content>
