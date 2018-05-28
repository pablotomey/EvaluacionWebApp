<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Admin.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section"></div>
    <div class="row col l12">
        <div class="container">
            <div class="card-panel orange col l6">
                <div class="card-content white-text">
                    <div class="row center">
                        <i class="material-icons large">supervisor_account</i>
                    </div>
                    <h5 class="card-title center">Control de cuentas de usuario en el sistema</h5>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="container">
                            <a href="#" class="col l6">
                                <h6 class="white-text">Cuentas activas en el sistema</h6>
                            </a>
                            <h5 class="col l4">0</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <a href="#" class="col l6">
                                <h6 class="white-text">Cuentas inactivas en el sistema</h6>
                            </a>
                            <h5 class="col l4">0</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <a href="#" class="col l6">
                                <h6 class="white-text">Cuentas admin</h6>
                            </a>
                            <h5 class="col l4">0</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
