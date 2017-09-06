using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace CAD
{
    public class CADAdministradores
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthSport"].ConnectionString);
        public bool RegistrarAdmin(string[] parametros)
        {
            // instacia el controlar
            DTOAdministradores adm = new DTOAdministradores();
            // se setean los parametros
            adm.Codigo_administrador = Convert.ToInt16(parametros[0]);
            adm.Nombre_administrador = parametros[1];
            adm.Apellido_administrador = parametros[2];
            adm.Usuario = parametros[3];
            adm.Clave = parametros[4];
            adm.Documento_administrador = parametros[5];
            adm.Celular_administrador = parametros[6];
            adm.Correo_administrador = parametros[7];
            DataTable dt = new DataTable();
            try
            {
                
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert_administradores";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cod_adm", adm.Codigo_administrador);
                cmd.Parameters.AddWithValue("@nom_adm", adm.Nombre_administrador);
                cmd.Parameters.AddWithValue("@ape_adm", adm.Apellido_administrador);
                cmd.Parameters.AddWithValue("@usu", adm.Usuario);
                cmd.Parameters.AddWithValue("@cla", adm.Clave);
                cmd.Parameters.AddWithValue("@doc_adm", adm.Documento_administrador);
                cmd.Parameters.AddWithValue("@cel_adm", adm.Celular_administrador);
                cmd.Parameters.AddWithValue("@cor_adm", adm.Correo_administrador);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return true;

            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool consultarAdmin(DTOAdministradores adm)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "consultar_administradores";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cod_adm", adm.Codigo_administrador);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    adm.Codigo_administrador = Convert.ToInt16(sdr[0]);
                    adm.Nombre_administrador = Convert.ToString(sdr[1]);
                    adm.Apellido_administrador = Convert.ToString(sdr[2]);
                    adm.Usuario = Convert.ToString(sdr[3]);
                    adm.Clave = Convert.ToString(sdr[4]);
                    adm.Documento_administrador = Convert.ToString(sdr[5]);
                    adm.Celular_administrador = Convert.ToString(sdr[6]);
                    adm.Correo_administrador = Convert.ToString(sdr[7]);
                }
                con.Close();
            }
            catch (Exception e)
            {
                string mensaje = e.Message;
            }
            return true;
        }
        



    }
}
