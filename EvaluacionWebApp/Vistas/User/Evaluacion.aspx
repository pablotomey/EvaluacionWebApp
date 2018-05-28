<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="Evaluacion.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.Evaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div class="row">
            <div class="container">
                <h5 class="grey-text">Evaluación Nutricional</h5>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="input-field col s6 m4 l4">
                    <input type="text" class="datepicker">
                    <label for="">Fecha</label>
                </div>
                <div class="input-field col s6 m4 l4">
                    <input type="text">
                    <label for="">Nº Ficha</label>
                </div>
                <div class="input-field col s12 m4 l4">
                    <input type="text">
                    <label for="">Nutricionista</label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="card-panel z-depth-2">
                    <div class="row">
                        <i class="material-icons small blue-text">account_circle</i>
                        <label>
                            <h6>Identificacion del paciente</h6>
                        </label>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Nombre</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Apellido Paterno</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Apellido Materno</label>
                        </div>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Edad</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Sexo</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Rut</label>
                        </div>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s12 m12 l12">
                            <textarea class="materialize-textarea"></textarea>
                            <label for="">Diagnostico</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="card-panel">
                    <div class="row">
                        <i class="material-icons small blue-text">straighten</i>
                        <label>
                            <h6>Antopometria</h6>
                        </label>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Peso</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Talla</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">IMC</label>
                        </div>
                    </div>
                    <div class="row s12">
                        <div class="input-field col s6 m4 l4">
                            <input type="text">
                            <label for="">Peso ideal</label>
                        </div>
                        <div class="input-field col s6 m4 l4">
                            <select>
                                <option value="" disabled selected>Escoger Factor</option>
                                <option value="1">21,5</option>
                                <option value="2">26</option>
                                <option value="3">27</option>
                            </select>
                            <label>Factor</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row center">
            <button class="waves-effect waves-light btn blue darken-4 z-depth-4" type="submit" name="action">Guardar<i class="material-icons right">save</i>
            </button>
        </div>
    </form>
</asp:Content>

