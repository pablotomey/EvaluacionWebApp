function calcularImc() {

    var peso, talla, imc;

    peso = document.getElementById('txtPeso').value;
    talla = document.getElementById('txtTalla').value;

    if (peso === "") {
        peso = 0;
    } else if (talla === "") {
        talla = 0;
    }

    imc = parseFloat(peso) / parseFloat(talla * talla);

    if (isNaN(imc)) {
        imc = 0;
    } else if (imc === Infinity) {
        imc = 0;
    }

    document.getElementById('txtImc').value = imc.toFixed(1);
}

function calcularPesoIdeal() {

    var talla, pesoIdeal, factor, numFactor;

    talla = document.getElementById('txtTalla').value;
    factor = document.getElementById('ddlFactor');

    factor.addEventListener('change',
        function () {
            var selectedOption = this.options[factor.selectedIndex];

            if (talla === "") {
                talla = 0;
            } else if (factor === "" || factor === "Seleccionar") {
                factor = 0;
            }

            pesoIdeal = parseFloat(talla * talla) * parseFloat(selectedOption.text);

            if (isNaN(pesoIdeal)) {
                pesoIdeal = 0;
            } else if (pesoIdeal === Infinity) {
                pesoIdeal = 0;
            }

            document.getElementById('txtPesoIdeal').value = pesoIdeal.toFixed(1);

            calcularEnergiaInicial();
            calcularProteinaInicial();
            calcularEnergiaFinal();
            calcularProteinaFinal();
            
        });

    if (talla === "") {
        document.getElementById('txtPesoIdeal').value = 0;
    }
}

function calcularPliegues() {

    var pliegues, pt, pb, psi, pse;

    pt = document.getElementById('txtPT').value;
    pb = document.getElementById('txtPB').value;
    psi = document.getElementById('txtPSI').value;
    pse = document.getElementById('txtPSE').value;

    if (pt === "") {
        pt = 0;
    } else if (pb === "") {
        pb = 0;
    } else if (psi === "") {
        psi = 0;
    } else if (pse === "") {
        pse = 0;
    }

    pliegues = parseFloat(pt) + parseFloat(pb) + parseFloat(psi) + parseFloat(pse);

    if (isNaN(pliegues)) {
        pliegues = 0;
    } else if (pliegues === Infinity) {
        pliegues = 0;
    }

    document.getElementById('txtPliegues').value = pliegues.toFixed(1);
}

function calcularCMB() {

    var cmb, pt, cb;
    var pi = 3.1416;

    pt = document.getElementById('txtPT').value;
    cb = document.getElementById('txtCB').value;

    if (pt === "") {
        pt = 0;
    } else if (cb === "") {
        cb = 0;
    }

    cmb = (cb - (parseFloat(pi * pt)));

    if (isNaN(cmb)) {
        cmb = 0;
    } else if (cmb === Infinity) {
        cmb = 0;
    }

    document.getElementById('txtCMB').value = cmb.toFixed(1);

    calcularAMB();
}

function calcularAMB() {

    var amb, cmb;
    var pi = 3.1416;

    cmb = document.getElementById('txtCMB').value;

    if (cmb === "") {
        cmb = 0;
    }

    amb = parseFloat(cmb * cmb) / parseFloat(4 * pi);

    if (isNaN(amb)) {
        amb = 0;
    } else if (amb === Infinity) {
        amb = 0;
    }

    document.getElementById('txtAMB').value = amb.toFixed(1);

    calcularAGB();
        
}

function calcularAGB() {

    var agb, cb, amb;
    var pi = 3.1416;

    cb = document.getElementById('txtCB').value;
    amb = document.getElementById('txtAMB').value;

    if (cb === "") {
        cb = 0;
    } else if (amb === "") {
        amb = 0;
    }

    agb = (parseFloat(cb * cb) / parseFloat(4 * pi)) - amb;

    if (isNaN(agb)) {
        agb = 0;
    } else if (agb === Infinity) {
        agb = 0;
    }

    document.getElementById('txtAGB').value = agb.toFixed(1);
}

function calcularEnergiaInicial() {

    var pesoIdeal, factorKcal, energia;

    pesoIdeal = document.getElementById('txtPesoIdeal').value;
    factorKcal = document.getElementById('ddlFactorKcal');

    factorKcal.addEventListener('change',
        function () {

            var selectedOption = this.options[factorKcal.selectedIndex];

            if (pesoIdeal === "") {
                pesoIdeal = 0;
            } else if (factorKcal === "" || factorKcal === "Seleccionar") {
                factorKcal = 0;
            }

            energia = parseFloat(pesoIdeal) * parseFloat(selectedOption.text);

            if (isNaN(energia)) {
                energia = 0;
            } else if (energia === Infinity) {
                energia = 0;
            }

            document.getElementById('txtEnergia').value = energia.toFixed(1);

            calcularPorcInicio();
        });
}

function calcularProteinaInicial() {

    var pesoIdeal, factorProtInicial, proteina;

    pesoIdeal = document.getElementById('txtPesoIdeal').value;
    factorProtInicial = document.getElementById('ddlFactorProtInicio');

    factorProtInicial.addEventListener('change',
        function () {

            var selectedOption = this.options[factorProtInicial.selectedIndex];

            if (pesoIdeal === "") {
                pesoIdeal = 0;
            } else if (factorProtInicial === "" || factorProtInicial === "Seleccionar") {
                factorProtInicial = 0;
            }

            proteina = parseFloat(pesoIdeal) * parseFloat(selectedOption.text);

            if (isNaN(proteina)) {
                proteina = 0;
            } else if (proteina === Infinity) {
                proteina = 0;
            }

            document.getElementById('txtProtInicio').value = proteina.toFixed(1);

            calcularPorcInicio();
        });
}

function calcularPorcInicio() {

    var porcInicio, protInicio, energiaInicio;

    protInicio = document.getElementById('txtProtInicio').value;
    energiaInicio = document.getElementById('txtEnergia').value;

    if (protInicio === "") {
        protInicio = 0;
    } else if (energiaInicio === "") {
        energiaInicio = 0;
    }

    porcInicio = parseFloat(protInicio * 4) / parseFloat(energiaInicio);

    if (isNaN(porcInicio)) {
        porcInicio = 0;
    } else if (porcInicio === Infinity) {
        porcInicio = 0;
    }

    document.getElementById('txtInicio').value = parseFloat(porcInicio * 100).toFixed();
}

function calcularEnergiaFinal() {

    var pesoIdeal, factorKcal, energiaFinal;

    pesoIdeal = document.getElementById('txtPesoIdeal').value;
    factorKcal = document.getElementById('ddlFactorKcalTermino');

    factorKcal.addEventListener('change',
        function () {

            var selectedOption = this.options[factorKcal.selectedIndex];

            if (pesoIdeal === "") {
                pesoIdeal = 0;
            } else if (factorKcal === "" || factorKcal === "Seleccionar") {
                factorKcal = 0;
            }

            energiaFinal = parseFloat(pesoIdeal) * parseFloat(selectedOption.text);

            if (isNaN(energiaFinal)) {
                energiaFinal = 0;
            } else if (energiaFinal === Infinity) {
                energiaFinal = 0;
            }

            document.getElementById('txtEnergiaTermino').value = energiaFinal.toFixed(1);

            calcularPorcTermino();
        });
}

function calcularProteinaFinal() {

    var pesoIdeal, factorProtFinal, proteinaFinal;

    pesoIdeal = document.getElementById('txtPesoIdeal').value;
    factorProtFinal = document.getElementById('ddlFactorProtTermino');

    factorProtFinal.addEventListener('change',
        function () {

            var selectedOption = this.options[factorProtFinal.selectedIndex];

            if (pesoIdeal === "") {
                pesoIdeal = 0;
            } else if (factorProtFinal === "" || factorProtFinal === "Seleccionar") {
                factorProtFinal = 0;
            }

            proteinaFinal = parseFloat(pesoIdeal) * parseFloat(selectedOption.text);

            if (isNaN(proteinaFinal)) {
                proteinaFinal = 0;
            } else if (proteinaFinal === Infinity) {
                proteinaFinal = 0;
            }

            document.getElementById('txtProtTermino').value = proteinaFinal.toFixed(1);

            calcularPorcTermino();
        });
}

function calcularPorcTermino() {

    var porcTermino, protFinal, energiaFinal;

    protFinal = document.getElementById('txtProtTermino').value;
    energiaFinal = document.getElementById('txtEnergiaTermino').value;

    if (protFinal === "") {
        protFinal = 0;
    } else if (energiaFinal === "") {
        energiaFinal = 0;
    }

    porcTermino = parseFloat(protFinal * 4) / parseFloat(energiaFinal);

    if (isNaN(porcTermino)) {
        porcTermino = 0;
    } else if (porcTermino === Infinity) {
        porcTermino = 0;
    }

    document.getElementById('txtTermino').value = parseFloat(porcTermino * 100).toFixed();
}

function choGrInicial() {

    var choGr, energia, choPorc;

    energia = document.getElementById('txtEnergia').value;
    choPorc = document.getElementById('txtCHOPorcInicio').value;

    if (energia === "") {
        energia = 0;
    } else if (choPorc === "") {
        choPorc = 0;
    }

    choGr = parseFloat(energia * (choPorc / 100)) / 4;

    if (isNaN(choGr)) {
        choGr = 0;
    } else if (choGr === Infinity) {
        choGr = 0;
    }

    document.getElementById('txtCHOGrInicio').value = choGr.toFixed(1);
}

function lipGrInicial() {

    var lipGr, energia, lipPorc;

    energia = document.getElementById('txtEnergia').value;
    lipPorc = document.getElementById('txtLIPPorcInicio').value;

    if (energia === "") {
        energia = 0;
    } else if (lipPorc === "") {
        lipPorc = 0;
    }

    lipGr = parseFloat(energia * (lipPorc / 100)) / 9;

    if (isNaN(lipGr)) {
        choGr = 0;
    } else if (lipGr === Infinity) {
        lipGr = 0;
    }

    document.getElementById('txtLIPGrInicio').value = lipGr.toFixed(1);
}

function choGrFinal() {

    var choGr, energia, choPorc;

    energia = document.getElementById('txtEnergiaTermino').value;
    choPorc = document.getElementById('txtCHOPorcTermino').value;

    if (energia === "") {
        energia = 0;
    } else if (choPorc === "") {
        choPorc = 0;
    }

    choGr = parseFloat(energia * (choPorc / 100)) / 4;

    if (isNaN(choGr)) {
        choGr = 0;
    } else if (choGr === Infinity) {
        choGr = 0;
    }

    document.getElementById('txtCHOGrTermino').value = choGr.toFixed(1);
}

function lipGrFinal() {

    var lipGr, energia, lipPorc;

    energia = document.getElementById('txtEnergiaTermino').value;
    lipPorc = document.getElementById('txtLIPPorcTermino').value;

    if (energia === "") {
        energia = 0;
    } else if (lipPorc === "") {
        lipPorc = 0;
    }

    lipGr = parseFloat(energia * (lipPorc / 100)) / 9;

    if (isNaN(lipGr)) {
        lipGr = 0;
    } else if (lipGr === Infinity) {
        lipGr = 0;
    }

    document.getElementById('txtLIPGrTermino').value = lipGr.toFixed(1);
}