<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.UserAccount" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section"></div>
    <div class="row">
        <div class="container">
            <div class="card-panel z-depth-2">
                <div class="row">
                    <i class="material-icons small blue-text left">person_add</i>
                    <h5 class="grey-text text-darken-2">Crear cuenta de Usuario</h5>
                </div>
                <div class="row">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtNombreUsuario"></asp:TextBox>
                        <label for="">Nombre*</label>
                        <asp:RequiredFieldValidator ID="cvNombre" runat="server" ControlToValidate="txtNombreUsuario"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApepat"></asp:TextBox>
                        <label for="">Apellido Paterno*</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApepat"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApemat"></asp:TextBox>
                        <label for="">Apellido Materno</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApemat"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtRutUsuario"></asp:TextBox>
                        <label>Rut*</label>
                        <asp:RequiredFieldValidator ID="cvRut" runat="server" ControlToValidate="txtRutUsuario"></asp:RequiredFieldValidator>
                        <asp:Label runat="server" ID="lblRutInvalido" ForeColor="Salmon"></asp:Label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtLogin" MaxLength="8"></asp:TextBox>
                        <label>Login*</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtContraseña" TextMode="Password"></asp:TextBox>
                        <label>Contraseña*</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContraseña"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6 m4 l4">
                        <asp:DropDownList runat="server" ID="lsdRol" AppendDataBoundItems="true">
                            <asp:ListItem Value="0">Seleccione rol</asp:ListItem>
                        </asp:DropDownList>
                        <label>Rol</label>
                    </div>
                </div>
                <div class="row center">
                    <button runat="server" id="btnGuardarUsuario" class="waves-effect waves-light btn blue darken-4 z-depth-3" onserverclick="btnGuardarUsuario_Click">Guardar</button>
                </div>
                <div class="row center">
                    <asp:Label runat="server" ID="lblResultado" ForeColor="Salmon"></asp:Label>
                </div>
            </div>
        </div>
    </div>

    <asp:Panel runat="server" ID="pnlConfirmar" CssClass="modalPopup" Style="display: compact">
        <div class="section"></div>
        <div class="container">
            <div class="row center">
                <i class="material-icons blue-grey-text medium">info_outline</i>
            </div>
            <div class="row center">
                <h5 class="grey-text text-darken-3">
                    <asp:Label runat="server" ID="lblConfirmacion"></asp:Label></h5>
            </div>
            <div class="row">
                <div class="center">
                    <button class="btn waves-effect waves-light blue darken-4" runat="server" id="btnConfirmar" onserverclick="btnConfirmar_Click">Volver<i class="material-icons right">reply_all</i></button>
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Label runat="server" ID="lblOculto"></asp:Label>
    <ajaxToolkit:ModalPopupExtender
        runat="server"
        TargetControlID="lblOculto"
        ID="mpeConfirmar"
        BackgroundCssClass="modalBackGround"
        PopupControlID="pnlConfirmar">
    </ajaxToolkit:ModalPopupExtender>

</asp:Content>
