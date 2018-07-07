<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.UserAccount" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="container">
            <h5 class="grey-text">Crear cuenta de Usuario</h5>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel z-depth-2">
                <div class="row">
                    <i class="material-icons small blue-text">person_add</i>
                    <label>
                        <h6>Datos de Usuario</h6>
                    </label>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtNombreUsuario"></asp:TextBox>
                        <label for="">Nombre</label>
                        <asp:RequiredFieldValidator ID="cvNombre" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNombreUsuario"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApepat"></asp:TextBox>
                        <label for="">Apellido Paterno</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtApepat"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApemat"></asp:TextBox>
                        <label for="">Apellido Materno</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtApemat"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtRutUsuario"></asp:TextBox>
                        <label for="">Rut</label>
                        <asp:RequiredFieldValidator ID="cvRut" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtRutUsuario"></asp:RequiredFieldValidator>
                        <asp:Label runat="server" ID="lblRutInvalido" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtLogin" MaxLength="8"></asp:TextBox>
                        <label for="">Login</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>                        
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtContraseña"></asp:TextBox>
                        <label>Contraseña</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtContraseña"></asp:RequiredFieldValidator>             
                    </div>
                    <div class="row">
                        <div class="input-field col s6 m4 l4">
                            <asp:DropDownList runat="server" ID="lsdRol" AppendDataBoundItems="true">
                                <asp:ListItem Value="0">Seleccione rol</asp:ListItem>
                            </asp:DropDownList>
                            <label>Rol</label>
                        </div>
                    </div>
                </div>
                <div class="row center">
                    <asp:Button runat="server" ID="btnGuardarUsuario" CssClass="waves-effect waves-light btn blue darken-4 z-depth-4" Text="Guardar" OnClick="btnGuardarUsuario_Click" />
                </div>
                <div class="row center">
                    <asp:Label runat="server" ID="lblResultado" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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

            <asp:Panel runat="server" ID="pnlConfirmar" CssClass="modalPopup" style="display: compact">
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
</asp:Content>
