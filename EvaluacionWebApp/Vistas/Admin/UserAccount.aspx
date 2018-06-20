<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.UserAccount" %>

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
                        <asp:RequiredFieldValidator ID="cvNombre" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtNombreUsuario"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="cvNombre2" runat="server" ErrorMessage="Solo Caracteres" ForeColor="Red" ValidationExpression="^\s*[a-zA-Z\s]+\s*$" ControlToValidate="txtNombreUsuario"></asp:RegularExpressionValidator>
                        <label for="">Nombre</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApepat"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtApepat"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo Caracteres" ForeColor="Red" ValidationExpression="^\s*[a-zA-Z\s]+\s*$" ControlToValidate="txtApepat"></asp:RegularExpressionValidator>
                        <label for="">Apellido Paterno</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtApemat"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtApemat"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Solo Caracteres" ForeColor="Red" ValidationExpression="^\s*[a-zA-Z\s]+\s*$" ControlToValidate="txtApemat"></asp:RegularExpressionValidator>
                        <label for="">Apellido Materno</label>
                    </div>
                </div>
                <div class="row s12">
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtRutUsuario"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="cvRut" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtRutUsuario"></asp:RequiredFieldValidator>
                        <label for="">Rut</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtLogin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="8 Caracteres" ForeColor="Red" ValidationExpression="^[a-zA-Z]{8}$" ControlToValidate="txtLogin"></asp:RegularExpressionValidator>
                        <label for="">Login</label>
                    </div>
                    <div class="input-field col s6 m4 l4">
                        <asp:TextBox runat="server" ID="txtContraseña"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ControlToValidate="txtContraseña"></asp:RequiredFieldValidator>
                        <label for="">Contraseña</label>
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
                    <asp:Label runat="server" ID="lblResultado"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
