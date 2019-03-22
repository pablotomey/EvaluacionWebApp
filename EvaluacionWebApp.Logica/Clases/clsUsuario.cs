using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.UI;
using EvaluacionWebApp.Logica.ModeloEntidades;
using EvaluacionWebApp.Logica.Interfaces;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsUsuario
    {
        /**
         * Metodo para guardar un usuario en el sistema, en primera instancia, valida si no
         * hay un rut igual registrado previamente, si no es asi, guarda el registro del usuario.
         */
        public String guardarUsuario(String nombre, int rut,String apepat,String apemat,DateTime fecha,
                                     String login,String contraseña,int id_rol)
        {           
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    List<int?> rutUsuario = (from users in dbEntity.Usuarios                                      
                                             select users.rut).ToList();

                    bool rutMatch=false;

                    foreach(var find in rutUsuario)
                    {
                        if (find == rut)
                        {
                            rutMatch = true;
                            break;
                        }
                        else
                        {
                            rutMatch = false;
                        }
                    }

                    if (rutMatch)
                    {
                        return "El rut ingresado ya existe";
                    }
                    else
                    {
                        dbEntity.RegistrarUsuario(nombre, rut, apepat, apemat, fecha, login, contraseña, id_rol);
                        return "Datos guardados exitosamente";
                        
                    }

                }                
            }
            catch(Exception ex)
            {
                return "Error al guardar los datos";
                throw ex;
            }           
        }
        /**
         * Metodo para modificar los datos de un usuario registrado.
         */
        public String modificarUsuario(int id,String nombre, String apepat, String apemat, String login,int idRol)
        {
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    Usuarios usuario = (from users in dbEntity.Usuarios
                                        where users.id_usuario == id
                                        select users).First();

                    usuario.nombre = nombre;
                    usuario.apepat = apepat;
                    usuario.apemat = apemat;
                    usuario.login = login;
                    usuario.id_rol = idRol;
                    dbEntity.SaveChanges();
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return "Se ha modificado el Usuario";
        }
        /**
         * Metodo que modifica el estado del usuario de activo a inactivo (eliminacion logica).
         */
        public String desactivarUsuario(int idUser)
        {
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    Usuarios usuario = (from users in dbEntity.Usuarios
                                        where users.id_usuario == idUser
                                        select users).First();

                    usuario.estado = "inactivo";
                    dbEntity.SaveChanges();

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return "Se ha desactivado la cuenta de usuario";
        }
        /**
         * Metodo para listar los usuarios desde la base de datos,
         * se utiliza para llenar el gridview de la capa de presentación
         */
        public List<UsuariosInterface> mostrarUsuarios()
        {
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    List<UsuariosInterface> queryUsuarios = (from users in dbEntity.Usuarios
                                                      from rol in dbEntity.Roles
                                                      where users.estado == "activo"
                                                      where users.id_rol==rol.id_rol
                                                      select new UsuariosInterface
                                                      {
                                                          id_usuario = users.id_usuario,
                                                          rut=users.rut,
                                                          nombre=users.nombre,
                                                          apepat=users.apepat,
                                                          apemat=users.apemat,
                                                          estado=users.estado,
                                                          fecha_creacion=users.fecha_creacion,
                                                          login=users.login,
                                                          rol=rol.rol
                                                      }).ToList();

                    return queryUsuarios;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /**
         * Metodo para validar el ingreso del usuario al sistema, utiliza un procedimiento almacenado
         * como funcion para validar el password y username, este devuelve, si hay coinsidencia, el rol del
         * usuario.
         */
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
            catch (Exception ex)
            {

                throw ex;
            }
            return numRol;
        }
        /**
        * Metodo para realizar la validacion del rut del Usuario.
        * Valida la expresion regular ingresada y devuelve el rut sin el codigo verificador.
        */
        public String validarRut(String rut)
        {
            Regex exp = new Regex("^[0-9]+-[0-9k]$");

            
            if (!exp.IsMatch(rut))
            {
                return "Rut invalido";
            }
            String dv = rut.Substring(rut.Length - 1, 1);
            char guion = '-';
            String[] rutAll = rut.Split(guion);

            if (dv != validarDv(int.Parse(rutAll[0])))
            {
                return "Rut invalido";
            }

            return rutAll[0];

        }
        /**
        * Metodo para validar el digito verificador del rut.
        */
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
        /**
         * Contador de cuentas activas en el sistema.
         */
        public int cuentasActivas()
        {
            try
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    List<String> cuentasActivas = (from users in dbEntity.Usuarios
                                                    select users.estado).ToList();

                    int contador=0;

                    foreach (var find in cuentasActivas)
                    {
                        // Recorremos los la tabla usuarios y los que tengan estado "activo" aumentaran el contador en 1
                        if (find == "activo")
                        {
                            contador++;
                        }
                        else { }
                    }

                    return contador;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /**
         * Contador de cuentas admin activas en el sistema.
         */
        public int cuentasAdmin()
        {
            try
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    List<int> cuentasAdmin = (from users in dbEntity.Usuarios
                                              where users.estado=="activo"
                                              select users.id_rol).ToList();

                    int contador = 0;

                    foreach (var find in cuentasAdmin)
                    {
                        // Recoremos la tabla Usuarios y los que tengan id_rol = 1 son admin, aumenta el contador en 1.
                        if (find == 1)
                        {
                            contador++;
                        }
                        else { }
                    }

                    return contador;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /**Contador de cuentas de usuario activas en el sistema.
         */
        public int cuentasUser()
        {
            try
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    List<int> cuentasAdmin = (from users in dbEntity.Usuarios
                                              where users.estado == "activo"
                                              select users.id_rol).ToList();

                    int contador = 0;

                    foreach (var find in cuentasAdmin)
                    {
                        // Recoremos la tabla Usuarios y los que tengan id_rol = 2 son user, aumenta el contador en 1.
                        if (find == 2)
                        {
                            contador++;
                        }
                        else { }
                    }

                    return contador;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /**
         * Metodo para recuperar el id del usuario.
         * parametro'login' lo obtenemos de la session["Usuario"] la cual contiene el username o login.
         */
        public int idUsuario(String login)
        {
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    int idUser = (from users in dbEntity.Usuarios
                                  where users.login == login
                                  select users.id_usuario).First();

                    return idUser;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
