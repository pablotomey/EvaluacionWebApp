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
                                <!--Control para enviar el Username del usuario-->
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>                               
                                <label>Nombre de usuario</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Requerido" ForeColor="Salmon" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row center">
                            <div class="input-field col m12 s12">
                                <i class="material-icons prefix left grey-text">lock_outline</i>
                                <!--Control para enviar el password del usaurio-->
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>                                
                                <label>Password</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Requerido" ForeColor="Salmon" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="center">
                            <button runat="server" id="btnIngresar" class="waves-effect waves-light btn blue darken-4 z-depth-2" onserverclick="btnIngresar_Click1" >Ingresar</button>
                        </div>
                        <div class="center">
                            <asp:Label runat="server" ID="lblResultado" ForeColor="Salmon"></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Import jQuery before materialize.js-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../Content/js/materialize.min.js"></script>
</body>
</html>
