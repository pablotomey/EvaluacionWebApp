<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/UserMaster.Master" AutoEventWireup="true" CodeBehind="EvalReview.aspx.cs" Inherits="EvaluacionWebApp.Vistas.User.EvalReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h5 class="card-title grey-text">Revisar Evaluaciones Nutricionales</h5>
        </div>
        <div class="row">
            <div class="input-field col l6">
                <asp:TextBox runat="server" ID="txtRutFind"></asp:TextBox>
                <label>Ingresar rut del paciente</label>
                <asp:Label runat="server" ID="lblRutInvalido" ForeColor="Salmon"></asp:Label>
            </div>
        </div>
        <div class="row">
            <button runat="server" id="btnRutFind" class="waves-effect waves-light btn orange darken-1" onserverclick="btnRutFind_Click"><i class="material-icons right">search</i>Buscar Evaluación</button>
        </div>
        <div class="section"></div>
        <div class="row">
            <h6><asp:Label runat="server" ID="lblPacienteFind"></asp:Label></h6>           
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleAntr" Visible="false">Antropometria</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upAntropometria" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdAntropometria" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalAntr" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                            <asp:BoundField DataField="peso_antr" HeaderText="Peso"  />
                            <asp:BoundField DataField="talla_antr" HeaderText="Talla"  />
                            <asp:BoundField DataField="imc_antr" HeaderText="Imc"  />
                            <asp:BoundField DataField="peso_ideal_antr" HeaderText="Peso ideal" />
                            <asp:BoundField DataField="factor_peso_antr" HeaderText="Factor" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleCC" Visible="false">Composición corporal</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upComposicion" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdComposicion" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalCorp" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="cb_corp" HeaderText="CB(mm)" />
                            <asp:BoundField DataField="pt_corp" HeaderText="PT(mm)"  />
                            <asp:BoundField DataField="pb_corp" HeaderText="PB"  />
                            <asp:BoundField DataField="psi_corp" HeaderText="PSI"  />
                            <asp:BoundField DataField="pse_corp" HeaderText="PSE" />
                            <asp:BoundField DataField="pliegues_corp" HeaderText="Pliegues" />
                            <asp:BoundField DataField="cc_corp" HeaderText="CC" />
                            <asp:BoundField DataField="carpo_corp" HeaderText="C.CARPO" />
                            <asp:BoundField DataField="cmb_corp" HeaderText="CMB(mm)" />
                            <asp:BoundField DataField="amb_corp" HeaderText="AMB(mm)" />
                            <asp:BoundField DataField="agb_corp" HeaderText="AGB(mm)" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleExamen" Visible="false">Exámenes</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upExamenes" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdExamenes" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalEX" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="albumina" HeaderText="Albumina" />
                            <asp:BoundField DataField="creatinina" HeaderText="Creatinina"  />
                            <asp:BoundField DataField="balance_hidrico" HeaderText="Balance H."  />
                            <asp:BoundField DataField="pco2" HeaderText="PCO2"  />
                            <asp:BoundField DataField="pafi" HeaderText="PAFI" />
                            <asp:BoundField DataField="leucocitos" HeaderText="Leucocitos" />
                            <asp:BoundField DataField="pc_reactiva" HeaderText="PC reactiva" />
                            <asp:BoundField DataField="hemoglobina" HeaderText="HB" />
                            <asp:BoundField DataField="hematrocito" HeaderText="HTO" />
                            <asp:BoundField DataField="trigliceridos" HeaderText="TG" />
                            <asp:BoundField DataField="glicemia" HeaderText="Glicemia" />
                            <asp:BoundField DataField="lactato" HeaderText="Lactato" />
                            <asp:BoundField DataField="urea" HeaderText="Urea" />
                            <asp:BoundField DataField="otros_examenes" HeaderText="Otros" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleDiagn" Visible="false">Diagnostico nutricional</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upDiagnostico" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdDiagnostico" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalDiagn" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="diagnostico_nutricional" HeaderText="Diagnostico Nutricional" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleReqInicial" Visible="false">Requerimientos de inicio</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upReqInicial" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdReqInicial" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdReqInicial" runat="server" Text='<%# Bind("id_requerimiento") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="requerimiento" HeaderText="Requerimiento %"  />
                            <asp:BoundField DataField="energia" HeaderText="Energia Kcal/día"  />
                            <asp:BoundField DataField="proteina" HeaderText="Proteina g/día"  />
                            <asp:BoundField DataField="factor_kcal" HeaderText="Factor Kcal/kg" />
                            <asp:BoundField DataField="factor_prot" HeaderText="Factor gr/kg" />
                            <asp:BoundField DataField="cho_porc" HeaderText="CHO %" />
                            <asp:BoundField DataField="cho_gr" HeaderText="CHO gr" />
                            <asp:BoundField DataField="lip_porc" HeaderText="LIP %" />
                            <asp:BoundField DataField="lip_gr" HeaderText="LIP gr" />
                            <asp:BoundField DataField="id_evaluacion" HeaderText="N° Eval" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleReqFinal" Visible="false">Requerimientos de Termino</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upReqFinal" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdReqFinal" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdReqFinal" runat="server" Text='<%# Bind("id_requerimiento") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="requerimiento" HeaderText="Requerimiento %"  />
                            <asp:BoundField DataField="energia" HeaderText="Energia Kcal/día"  />
                            <asp:BoundField DataField="proteina" HeaderText="Proteina g/día"  />
                            <asp:BoundField DataField="factor_kcal" HeaderText="Factor Kcal/kg" />
                            <asp:BoundField DataField="factor_prot" HeaderText="Factor gr/kg" />
                            <asp:BoundField DataField="cho_porc" HeaderText="CHO %" />
                            <asp:BoundField DataField="cho_gr" HeaderText="CHO gr" />
                            <asp:BoundField DataField="lip_porc" HeaderText="LIP %" />
                            <asp:BoundField DataField="lip_gr" HeaderText="LIP gr" />
                            <asp:BoundField DataField="id_evaluacion" HeaderText="N° Eval" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleMeta" Visible="false">Meta nutricional (Sin BN)</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="upMetaNutr" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdMetaNutr" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalNutr" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="meta_nutricional" HeaderText="Meta Nutricional" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <h5><asp:Label runat="server" ID="lblTitleObs" Visible="false">Observaciones</asp:Label></h5>
        </div>
        <div class="row">
            <asp:UpdatePanel ID="opObservacion" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:GridView runat="server" ID="grdObservacion" CssClass="striped" AutoGenerateColumns="false" EmptyDataText="No se encontraron registros">
                        <Columns>
                            <asp:TemplateField HeaderText="N° Eval">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdEvalObs" runat="server" Text='<%# Bind("id_evaluacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="observaciones" HeaderText="Observaciones" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
