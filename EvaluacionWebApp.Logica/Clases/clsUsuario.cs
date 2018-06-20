using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.UI;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsUsuario
    {
        public String guardarUsuario(String nombre, int Rut,String apepat,String apemat,DateTime fecha,
                                     String login,String contraseña,int id_rol)
        {           
            try
            {
                using(db_nutricionEntities db_entity=new db_nutricionEntities())
                {
                    db_entity.RegistrarUsuario(nombre, Rut, apepat, apemat, fecha, login, contraseña, id_rol);
                    
                }                
            }
            catch(Exception ex)
            {
                return "Datos requeridos";
                throw ex;
            }

            return "Datos guardados exitosamente";
        }

        public int validarUsuario(String username, String password)
        {
            int numRol;
            try
            {
                using(db_nutricionEntities db_entity=new db_nutricionEntities())
                {
                    //parametro de objeto que pide el 'SP' como devolución de rol de usaurio
                    ObjectParameter result = new ObjectParameter("resultado", typeof(String));

                    db_entity.LoginUsuario(username, password, result);
                    /*Result es el parametro de devolucion dentro del 'SP',
                      devuelve si el usuario es'administrador' o 'usuario'
                      despues de validar el username y password*/
                    if (result.Value.ToString().Equals("administrador"))
                    {
                        numRol = 1;
                    }
                    else if (result.Value.ToString().Equals("usuario"))
                    {
                        numRol = 2;
                    }
                    else
                    {
                        numRol = 0;
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
            return numRol;
        }

        public bool validarRut(String rut)
        {
            Regex exp = new Regex("^[0-9]+-[0-9k]$");

            
            if (!exp.IsMatch(rut))
            {
                return false;
            }
            String dv = rut.Substring(rut.Length - 1, 1);
            char guion = '-';
            String[] rutAll = rut.Split(guion);

            if (dv != validarDv(int.Parse(rutAll[0])))
            {
                return false;
            }
            return true;

        }

        public String validarDv(int rut)
        {
            int suma = 0;
            int multiplicador = 1;

            char[] num = rut.ToString().ToCharArray();

            for (int i = rut.ToString().Length - 1; i >= 0; i--)
            {
                multiplicador++;
                if (multiplicador == 8)
                {
                    multiplicador = 2;
                }
                suma += int.Parse(num[i].ToString()) * multiplicador;
            }

            int dv = 11 - (suma % 11);

            if (dv == 11)
            {
                return "0";
            }
            else if (dv == 10)
            {
                return "k";
            }
            else
            {
                return dv.ToString();
            }
        }
    }
}
