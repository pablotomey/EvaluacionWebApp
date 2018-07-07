<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.AdminAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="container">
            <h5 class="grey-text">Administrar Cuentas de usuario</h5>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-panel z-depth-2">
                <div class="section"></div>
                <div class="row">
                    <div class="col l8">
                        <button runat="server" id="btnBuscarTodos" onserverclick="btnBuscarTodos_Click" class="btn waves-effect waves-light orange btn-large">
                            Consultar cuentas de Usuario en el sistema
                            <i class="material-icons right">group</i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Tabla de usuarios y modales con Ajax-->
    <div class="row">
        <div class="container">
            <asp:GridView runat="server" ID="grdTablaUsuarios" CssClass="highlight" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros" OnRowCommand="grdTablaUsuarios_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="lblIdUser" runat="server" Text='<%# Bind("id_usuario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="rut" HeaderText="Rut" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="apepat" HeaderText="A.paterno" />
                    <asp:BoundField DataField="apemat" HeaderText="A.materno" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                    <asp:BoundField DataField="fecha_creacion" HeaderText="Creación" />
                    <asp:BoundField DataField="login" HeaderText="Username" />
                    <asp:BoundField DataField="rol" HeaderText="Rol" />
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
                    <asp:TextBox runat="server" ID="txtLoginMod"></asp:TextBox>
                    <label>Username</label>
                </div>
                <div class="input-field col l4">
                    <asp:DropDownList runat="server" ID="lsdRolMod" AppendDataBoundItems="true">
                        <asp:ListItem Value="0">Seleccione rol</asp:ListItem>
                    </asp:DropDownList>
                    <label>Rol</label>
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
