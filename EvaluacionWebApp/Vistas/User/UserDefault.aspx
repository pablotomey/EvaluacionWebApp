<%@ Page Title="Bienvenido Usuario" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserDefault.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.UserDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section"></div>
    <div class="row">
        <div class="container">
            <div class="col l4 s12 m12">
                <div class="card-panel blue darken-1">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">content_paste</i>
                        </div>
                        <h5 class="card-title center">Evaluaciones en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <asp:Label runat="server" ID="lblCountCuentas" CssClass="large"><h4>0</h4></asp:Label>
                            </div>
                        </div>                       
                    </div>
                </div>
            </div>
            <div class="col l4 s12 m12">
                <div class="card-panel  purple darken-1">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">airline_seat_flat</i>
                        </div>
                        <h5 class="card-title center">Pacientes ingresados activos en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <asp:Label runat="server" ID="lblCountAdmin" CssClass="large"><h4>0</h4></asp:Label>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="col l4 s12 m12">
                <div class="card-panel yellow darken-1">
                    <div class="card-content white-text">
                        <div class="row center">
                            <i class="material-icons large">accessibility</i>
                        </div>
                        <h5 class="card-title center">Pacientes de alta en el sistema</h5>
                        <div class="divider"></div>
                        <div class="row">
                            <div class="container center">
                                <asp:Label runat="server" ID="lblCountUser" CssClass="large"><h4>0</h4></asp:Label>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
