using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTOAdministradores
    {
        int codigo_administrador;
        string nombre_administrador;
        string apellido_administrador;
        string usuario;
        string clave;
        string documento_administrador;
        string celular_administrador;
        string correo_administrador;

        public int Codigo_administrador
        {
            get
            {
                return codigo_administrador;
            }

            set
            {
                codigo_administrador = value;
            }
        }

        public string Nombre_administrador
        {
            get
            {
                return nombre_administrador;
            }

            set
            {
                nombre_administrador = value;
            }
        }

        public string Apellido_administrador
        {
            get
            {
                return apellido_administrador;
            }

            set
            {
                apellido_administrador = value;
            }
        }

        public string Usuario
        {
            get
            {
                return usuario;
            }

            set
            {
                usuario = value;
            }
        }

        public string Clave
        {
            get
            {
                return clave;
            }

            set
            {
                clave = value;
            }
        }


        public string Documento_administrador
        {
            get
            {
                return documento_administrador;
            }

            set
            {
                documento_administrador = value;
            }
        }

        public string Celular_administrador
        {
            get
            {
                return celular_administrador;
            }

            set
            {
                celular_administrador = value;
            }
        }

        public string Correo_administrador
        {
            get
            {
                return correo_administrador;
            }

            set
            {
                correo_administrador = value;
            }
        }
    }
}
