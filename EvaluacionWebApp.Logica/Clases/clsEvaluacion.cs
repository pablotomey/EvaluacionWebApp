using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EvaluacionWebApp.Logica.ModeloEntidades;
using EvaluacionWebApp.Logica.Interfaces;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsEvaluacion
    {
        /**
            * Metodo para guardar una evaluación nutricional, guarda la tabla evaluación 
            * y la tabla requerimientos (guarda dos requerimientos por evaluacion; de inicio y termino)
            */
        public string guardarEvaluacion(/*antropometria =>*/String fecha, String peso, String talla, String imc, String pesoIdeal, String factorPeso,
                                        /*composición corporal =>*/String cb, String pt, String pb, String psi, String pse, String pliegues, String cc, String carpo,
                                        String cmb, String amb, String agb,/*Examenes =>*/ String albulimia, String creatinina, String balHidr, String pco2,
                                        String pafi, String leucocitos, String pc_reactiva, String hemoglobina, String hematrocito, String triglic,
                                        String glicemia, String lactato, String urea, String otrosEx, String diagnosticoNutr, String metaNutr,
                                        String observaciones, int idPaciente, int idUsuario,/*Requerimientos iniciales==>*/String reqPorcInicial,
                                        String energiaInicial, String proteinaInicial, String factorKcalInicial, String factorProtInicial, String choPorcInicial,
                                        String choGrInicial, String lipPorcInicial, String lipGrInicial,/*Requerimientos finales*/String reqPorcFinal,
                                        String energiaFinal, String proteinaFinal, String factorKcalFinal, String factorProtFinal, String choPorcFinal,
                                        String choGrFinal, String lipPorcFinal, String lipGrFinal)
                                            
        {
            try
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    Evaluaciones evaluacion = new Evaluaciones
                    {
                        fecha=fecha,
                        peso_antr=peso,
                        talla_antr=talla,
                        imc_antr=imc,
                        peso_ideal_antr=pesoIdeal,
                        factor_peso_antr=factorPeso,
                        cb_corp=cb,
                        pt_corp=pt,
                        pb_corp=pb,
                        psi_corp=psi,
                        pse_corp=pse,
                        pliegues_corp=pliegues,
                        cc_corp=cc,
                        carpo_corp=carpo,
                        cmb_corp=cmb,
                        amb_corp=amb,
                        agb_corp=agb,
                        albumina=albulimia,
                        creatinina=creatinina,
                        balance_hidrico=balHidr,
                        pco2=pco2,
                        pafi=pafi,
                        leucocitos=leucocitos,
                        pc_reactiva=pc_reactiva,
                        hemoglobina=hemoglobina,
                        hematrocito=hematrocito,
                        trigliceridos=triglic,
                        glicemia=glicemia,
                        lactato=lactato,
                        urea=urea,
                        otros_examenes=otrosEx,
                        diagnostico_nutricional=diagnosticoNutr,
                        meta_nutricional=metaNutr,
                        observaciones=observaciones,
                        id_paciente=idPaciente,
                        id_usuario=idUsuario
                    };

                    Requerimientos requerimientoInicial = new Requerimientos
                    {
                        tipo= "Inicio",
                        requerimiento=reqPorcInicial,
                        energia=energiaInicial,
                        proteina=proteinaInicial,
                        factor_kcal=factorKcalInicial,
                        factor_prot=factorProtInicial,
                        cho_porc=choPorcInicial,
                        cho_gr=choGrInicial,
                        lip_porc=lipPorcInicial,
                        lip_gr=lipGrInicial,
                        Evaluaciones = evaluacion
                    };

                    Requerimientos requerimientoFinal = new Requerimientos
                    {
                        tipo = "Termino",
                        requerimiento = reqPorcFinal,
                        energia = energiaFinal,
                        proteina = proteinaFinal,
                        factor_kcal = factorKcalFinal,
                        factor_prot = factorProtFinal,
                        cho_porc = choPorcFinal,
                        cho_gr = choGrFinal,
                        lip_porc = lipPorcFinal,
                        lip_gr = lipGrFinal,
                        Evaluaciones =evaluacion
                    };

                    dbEntity.Evaluaciones.Add(evaluacion); // Guardamos Evaluación Nutricional
                    dbEntity.Requerimientos.Add(requerimientoInicial); // Guardamos Requerimiento inicial
                    dbEntity.Requerimientos.Add(requerimientoFinal); // Guardamos requerimiento final
                    dbEntity.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return "Evaluación registrada exitosamente";
        }
        
        // Metodo para mostrar los datos de antropometria del paciente, como argumento se necesita el rut
        public List<EvaluacionesInterface> mostrarAntropometria(int rutPaciente)
        {
            using(db_nutricionEntities dbEntity=new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryEvaluacion = (from eval in dbEntity.Evaluaciones
                                                               from paciente in dbEntity.Pacientes
                                                               where paciente.rut == rutPaciente
                                                               where paciente.estado == "activo"
                                                               where eval.id_paciente == paciente.id_paciente
                                                               select new EvaluacionesInterface
                                                               {
                                                                   id_evaluacion =eval.id_evaluacion,
                                                                   fecha=eval.fecha,
                                                                   peso_antr=eval.peso_antr,
                                                                   talla_antr=eval.talla_antr,
                                                                   imc_antr=eval.imc_antr,
                                                                   peso_ideal_antr=eval.peso_ideal_antr,
                                                                   factor_peso_antr=eval.factor_peso_antr
                                                               }).ToList();
                return queryEvaluacion;
            }
        }
        // Metodo para mostrar los datos de composicion corporal del paciente
        public List<EvaluacionesInterface> mostrarComposicion(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryComposicion = (from eval in dbEntity.Evaluaciones
                                                               from paciente in dbEntity.Pacientes
                                                               where paciente.rut == rutPaciente
                                                               where paciente.estado == "activo"
                                                               where eval.id_paciente == paciente.id_paciente
                                                               select new EvaluacionesInterface
                                                               {
                                                                   id_evaluacion = eval.id_evaluacion,
                                                                   cb_corp = eval.cb_corp,
                                                                   pt_corp = eval.pt_corp,
                                                                   pb_corp = eval.pb_corp,
                                                                   psi_corp = eval.psi_corp,
                                                                   pse_corp = eval.pse_corp,
                                                                   pliegues_corp = eval.pliegues_corp,
                                                                   cc_corp=eval.cc_corp,
                                                                   carpo_corp = eval.carpo_corp,
                                                                   cmb_corp = eval.cmb_corp,
                                                                   amb_corp = eval.amb_corp,
                                                                   agb_corp = eval.agb_corp,
                                                               }).ToList();
                return queryComposicion;
            }
        }

        // Metodo para mostrar los datos de los examenes del paciente
        public List<EvaluacionesInterface> mostrarExamenes(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryExamenes = (from eval in dbEntity.Evaluaciones
                                                               from paciente in dbEntity.Pacientes
                                                               where paciente.rut == rutPaciente
                                                               where paciente.estado == "activo"
                                                               where eval.id_paciente == paciente.id_paciente
                                                               select new EvaluacionesInterface
                                                               {
                                                                   id_evaluacion = eval.id_evaluacion,
                                                                   albumina = eval.albumina,
                                                                   creatinina = eval.creatinina,
                                                                   balance_hidrico = eval.balance_hidrico,
                                                                   pco2 = eval.pco2,
                                                                   pafi = eval.pafi,
                                                                   leucocitos = eval.leucocitos,
                                                                   pc_reactiva = eval.pc_reactiva,
                                                                   hemoglobina = eval.hemoglobina,
                                                                   hematrocito = eval.hematrocito,
                                                                   trigliceridos = eval.trigliceridos,
                                                                   glicemia = eval.glicemia,
                                                                   lactato = eval.lactato,
                                                                   urea = eval.urea,
                                                                   otros_examenes = eval.otros_examenes,
                                                               }).ToList();
                return queryExamenes;
            }
        }

        // Metodo para mostrar el diagnostico
        public List<EvaluacionesInterface> mostrarDiagNutr(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryDiagnostico = (from eval in dbEntity.Evaluaciones
                                                             from paciente in dbEntity.Pacientes
                                                             where paciente.rut == rutPaciente
                                                             where paciente.estado == "activo"
                                                             where eval.id_paciente == paciente.id_paciente
                                                             select new EvaluacionesInterface
                                                             {
                                                                 id_evaluacion = eval.id_evaluacion,
                                                                 diagnostico_nutricional=eval.diagnostico_nutricional
                                                             }).ToList();
                return queryDiagnostico;
            }
        }

        // metodo para mostrar la meta nutricional
        public List<EvaluacionesInterface> mostrarMetaNutr(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryMeta = (from eval in dbEntity.Evaluaciones
                                                                from paciente in dbEntity.Pacientes
                                                                where paciente.rut == rutPaciente
                                                                where paciente.estado == "activo"
                                                                where eval.id_paciente == paciente.id_paciente
                                                                select new EvaluacionesInterface
                                                                {
                                                                    id_evaluacion = eval.id_evaluacion,
                                                                    meta_nutricional = eval.meta_nutricional
                                                                }).ToList();
                return queryMeta;
            }
        }

        // Metodo para mostrar las observaciones registradas
        public List<EvaluacionesInterface> mostrarObservaciones(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<EvaluacionesInterface> queryObservaciones = (from eval in dbEntity.Evaluaciones
                                                                    from paciente in dbEntity.Pacientes
                                                                    where paciente.rut == rutPaciente
                                                                    where paciente.estado == "activo"
                                                                    where eval.id_paciente == paciente.id_paciente
                                                                    select new EvaluacionesInterface
                                                                    {
                                                                        id_evaluacion = eval.id_evaluacion,
                                                                        observaciones = eval.observaciones
                                                                    }).ToList();
                return queryObservaciones;
            }
        }
    }
}
