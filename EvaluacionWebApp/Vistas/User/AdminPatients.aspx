<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="AdminPatients.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.AdminPatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="container">
            <div class="card-panel z-depth-2">
                <div class="row">
                    <h5 class="grey-text text-darken-2">Administrar Pacientes</h5>
                </div>
                <!--Tabla de usuarios y modales con Ajax-->
                <div class="row">
                    <asp:GridView runat="server" ID="grdTablaPacientes" CssClass="highlight" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros" OnRowCommand="grdTablaPacientes_RowCommand" Font-Size="Smaller">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdPatients" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="nombrePaciente" HeaderText="Nombre" />
                            <asp:BoundField DataField="apepatPaciente" HeaderText="A.Paterno" />
                            <asp:BoundField DataField="apematPaciente" HeaderText="A.Materno" />
                            <asp:BoundField DataField="rutPaciente" HeaderText="Rut" />
                            <asp:BoundField DataField="edadPaciente" HeaderText="Edad" />
                            <asp:BoundField DataField="sexoPaciente" HeaderText="Sexo" />
                            <asp:BoundField DataField="diagnosticoPaciente" HeaderText="Diagnóstico" />
                            <asp:BoundField DataField="numFicha" HeaderText="Ficha" />
                            <asp:BoundField DataField="estadoPaciente" HeaderText="Estado" />
                            <asp:BoundField DataField="FechaCreacion" HeaderText="Ingreso" />
                            <asp:BoundField DataField="usuario" HeaderText="Nutricionista" />
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="btnModificar" ImageUrl="~/Content/img/modificar.png" CommandName="Modificar" CommandArgument="<%#((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Desactivar">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="btnDesactivar" ImageUrl="~/Content/img/eliminar.png" CommandName="Desactivar" CommandArgument="<%#((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para Desactivar-->
    <asp:Label runat="server" ID="lblOculto"></asp:Label>
    <ajaxToolkit:ModalPopupExtender runat="server"
        TargetControlID="lblOculto"
        ID="mpeDesactivar"
        Enabled="true"
        OkControlID="btnOkDesactivar"
        OnOkScript="__doPostback('btnOkDesactivar','')"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlDesactivar">
    </ajaxToolkit:ModalPopupExtender>

    <asp:Panel runat="server" ID="pnlDesactivar" CssClass="modalPopup" Style="display: none">
        <div class="section"></div>
        <div class="row">
            <div class="container">
                <div class="center">
                    <asp:Label runat="server" ID="lblDesactivar"></asp:Label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container center">
                <button class="btn waves-effect waves-light blue darken-4 btn-small" runat="server" id="btnOkDesactivar" onserverclick="btnOkDesactivar_Click">Aceptar<i class="material-icons right">check</i></button>
            </div>
        </div>
    </asp:Panel>
    <!-- Modal para Modificar-->
    <asp:Label runat="server" ID="lblOcultoMod"></asp:Label>
    <ajaxToolkit:ModalPopupExtender runat="server"
        TargetControlID="lblOcultoMod"
        ID="mpeModificar"
        Enabled="true"
        OkControlID="btnOkModificar"
        OnOkScript="__doPostback('btnOkModificar','')"
        CancelControlID="btnCancelModificar"
        OnCancelScript="__doPostback('btnCancelModificar','')"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlModificar">
    </ajaxToolkit:ModalPopupExtender>

    <asp:Panel runat="server" ID="pnlModificar" CssClass="modalPopup" Style="display: none">
        <div class="section"></div>
        <div class="container">
            <div class="row">
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtIdUserMod" Enabled="false"></asp:TextBox>
                    <label>ID</label>
                </div>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtNombreMod"></asp:TextBox>
                    <label>Nombre</label>
                </div>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtApepatMod"></asp:TextBox>
                    <label>Apellido Paterno</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtApematMod"></asp:TextBox>
                    <label>Apellido Materno</label>
                </div>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtEdadMod"></asp:TextBox>
                    <label>Edad</label>
                </div>
                <div class="input-field col l4">
                    <asp:TextBox runat="server" ID="txtSexoMod"></asp:TextBox>
                    <label>Sexo</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col l8">
                    <asp:TextBox runat="server" ID="txtDiagnosticoMod"></asp:TextBox>
                    <label>Diagnóstico</label>
                </div>
            </div>
            <div class="row">
                <div class="col l4">
                    <button class="btn waves-effect waves-light blue darken-4 btn-small" runat="server" id="btnOkModificar" onserverclick="btnOkModificar_Click">Aceptar<i class="material-icons right">check</i></button>
                </div>
                <div class="col l4">
                    <button class="btn waves-effect waves-light deep-orange darken-4 btn-small" runat="server" id="btnCancelModificar" onserverclick="btnCancelModificar_Click">Cancelar<i class="material-icons right">cancel</i></button>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
