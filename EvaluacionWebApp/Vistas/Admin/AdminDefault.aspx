<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section"></div>
    <div class="row">
        <div class="container">
            <div class="col l4 s12 m12">
                <div class="card-panel orange">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">supervisor_account</i>
                        </div>
                        <h5 class="card-title center">Control de cuentas activas en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <h4><asp:Label runat="server" ID="lblCountCuentas" CssClass="large"></asp:Label></h4>
                            </div>
                        </div>                       
                    </div>
                </div>
            </div>
            <div class="col l4 s12 m12">
                <div class="card-panel  red darken-1">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">account_box</i>
                        </div>
                        <h5 class="card-title center">Cuentas admin en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <h4><asp:Label runat="server" ID="lblCountAdmin" CssClass="large"></asp:Label></h4>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="col l4 s12 m12">
                <div class="card-panel indigo darken-1">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">account_circle</i>
                        </div>
                        <h5 class="card-title center">Control de cuentas de usuario en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <h4><asp:Label runat="server" ID="lblCountUser" CssClass="large"></asp:Label></h4>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
