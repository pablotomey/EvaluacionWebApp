<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EvaluacionWebApp.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../Content/css/materialize.min.css" media="screen,projection" />
    <link rel="stylesheet" href="../Content/css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
</head>
<body>
    <div id="login" class="blue-grey lighten-2 valign-wrapper">
        <div class="row">
            <div class="card-panel z-depth-4">
                <div class="row">
                    <div class="col m6 s12 center">
                        <img src="../Content/img/Logo_Hospital.png" class="responsive-img valign profile-image-login"/>
                        <p class="center">Servicio de alimentación y nutrición</p>
                    </div>
                    <form id="form1" runat="server" class="col m6 s12 center">
                        <div class="row center">
                            <div class="input-field col m12 s12">
                                <i class="material-icons prefix left grey-text">perm_identity</i>
                                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>                               
                                <label>Rut</label>
                            </div>
                        </div>
                        <div class="row center">
                            <div class="input-field col m12 s12">
                                <i class="material-icons prefix left grey-text">lock_outline</i>
                                <asp:TextBox ID="txtClave" runat="server" type="password"></asp:TextBox>
                                <label>Password</label>
                            </div>
                        </div>
                        <div class="center">                           
                            <asp:Button ID="btnIngresar" cssClass="waves-effect waves-light btn blue darken-4 z-depth-4 white-text" runat="server" Text="Ingresar"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Comentario para probar Github-->
    <!--Import jQuery before materialize.js-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../Content/js/materialize.min.js"></script>
</body>
</html>
