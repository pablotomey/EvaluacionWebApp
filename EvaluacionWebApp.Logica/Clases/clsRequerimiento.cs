using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EvaluacionWebApp.Logica.Interfaces;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsRequerimiento
    {
        public List<RequerimientosInterface> mostrarReqInicial(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<RequerimientosInterface> queryRequerimiento = (from req in dbEntity.Requerimientos
                                                               from pat in dbEntity.Pacientes
                                                               from eval in dbEntity.Evaluaciones
                                                               where pat.rut == rutPaciente
                                                               where pat.estado == "activo"
                                                               where eval.id_paciente == pat.id_paciente
                                                               where req.id_evaluacion==eval.id_evaluacion
                                                               where req.tipo=="Inicio"
                                                               select new RequerimientosInterface
                                                               {
                                                                   id_requerimiento=req.id_requerimiento,
                                                                   tipo=req.tipo,
                                                                   requerimiento=req.requerimiento,
                                                                   energia=req.energia,
                                                                   proteina=req.proteina,
                                                                   factor_kcal=req.factor_kcal,
                                                                   factor_prot=req.factor_prot,
                                                                   cho_porc=req.cho_porc,
                                                                   cho_gr=req.cho_gr,
                                                                   lip_porc=req.lip_porc,
                                                                   lip_gr=req.lip_gr,
                                                                   id_evaluacion = req.id_evaluacion
                                                               }).ToList();
                return queryRequerimiento;
            }
        }

        public List<RequerimientosInterface> mostrarReqFinal(int rutPaciente)
        {
            using (db_nutricionEntities dbEntity = new db_nutricionEntities())
            {
                List<RequerimientosInterface> queryRequerimiento = (from req in dbEntity.Requerimientos
                                                                    from pat in dbEntity.Pacientes
                                                                    from eval in dbEntity.Evaluaciones
                                                                    where pat.rut == rutPaciente
                                                                    where pat.estado == "activo"
                                                                    where eval.id_paciente == pat.id_paciente
                                                                    where req.id_evaluacion == eval.id_evaluacion
                                                                    where req.tipo == "Termino"
                                                                    select new RequerimientosInterface
                                                                    {
                                                                        id_requerimiento = req.id_requerimiento,
                                                                        tipo = req.tipo,
                                                                        requerimiento = req.requerimiento,
                                                                        energia = req.energia,
                                                                        proteina = req.proteina,
                                                                        factor_kcal = req.factor_kcal,
                                                                        factor_prot = req.factor_prot,
                                                                        cho_porc = req.cho_porc,
                                                                        cho_gr = req.cho_gr,
                                                                        lip_porc = req.lip_porc,
                                                                        lip_gr = req.lip_gr,
                                                                        id_evaluacion = req.id_evaluacion
                                                                    }).ToList();
                return queryRequerimiento;
            }
        }
    }
}
