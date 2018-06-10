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
                            <label for="">Nombre</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <asp:TextBox runat="server" ID="txtApepat"></asp:TextBox>
                            <label for="">Apellido Paterno</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <asp:TextBox runat="server" ID="txtApemat"></asp:TextBox>
                            <label for="">Apellido Materno</label>
                        </div>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s6 m4 l4">
                            <asp:TextBox runat="server" ID="txtRutUsuario"></asp:TextBox>
                            <label for="">Rut</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <asp:TextBox runat="server" ID="txtLogin"></asp:TextBox>
                            <label for="">Login</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <asp:TextBox runat="server" ID="txtContraseña" TextMode="Password"></asp:TextBox>
                            <label for="">Contraseña</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <asp:DropDownList runat="server" ID="slcRol">
                                <asp:ListItem Enabled="true" Text="Seleccionar Rol"></asp:ListItem>
                                <asp:ListItem>Administrador</asp:ListItem>
                                <asp:ListItem>Usuario</asp:ListItem>
                            </asp:DropDownList>                         
                            <label>Rol</label>
                        </div>
                    </div>
                    <div class="row center">
                        <asp:Button runat="server" ID="btnGuardarUsuario" CssClass="waves-effect waves-light btn blue darken-4 z-depth-4" Text="Guardar"/>
                    </div>
                </div>
            </div>
         </div>
            <!--<div class="row">
                <div class="container">
                    <div class="card-panel z-depth-2 ">
                        <label>
                            <h6>Usuarios ingresados</h6>
                        </label>
                        <table class="responsive-table highlight">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellido Paterno</th>
                                    <th>Apellido Materno</th>
                                    <th>Edad</th>
                                    <th>Contraseña</th>
                                    <th>rut</th>
                                    <th>rol</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Galmier</td>
                                    <td>Mancilla</td>
                                    <td>Delphi</td>
                                    <td>45</td>
                                    <td>XXXXXX</td>
                                    <td>66.666.666-6</td>
                                    <td>Administrador</td>
                                </tr>
                                <tr>
                                    <td>Galmier</td>
                                    <td>Mancilla</td>
                                    <td>Delphi</td>
                                    <td>45</td>
                                    <td>XXXXXX</td>
                                    <td>66.666.666-6</td>
                                    <td>Administrador</td>
                                </tr>
                                <tr>
                                    <td>Galmier</td>
                                    <td>Mancilla</td>
                                    <td>Delphi</td>
                                    <td>45</td>
                                    <td>XXXXXX</td>
                                    <td>66.666.666-6</td>
                                    <td>Administrador</td>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>-->
</asp:Content>
