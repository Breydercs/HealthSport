using CAD;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HealthSport
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnentrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // lista de parametros para el modelo
            string[] parametros = CrearObjeto();
            

            try
            {
                
                CADAdministradores datos = new CADAdministradores();
                bool registro = datos.RegistrarAdmin(parametros);
                if (registro)
                {
                    Response.Write("<script>alert('Registró con exito');</script>");
                    LimpiarCampos();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void btnConAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                DTOAdministradores adm = new DTOAdministradores();
                adm.Codigo_administrador = Convert.ToInt16(txtcodigoAdmin.Text);
                CADAdministradores datos = new CADAdministradores();
                datos.consultarAdmin(adm);
                if (adm.Nombre_administrador == null && adm.Apellido_administrador == null && adm.Usuario == null && adm.Documento_administrador == null
                    && adm.Celular_administrador == null && adm.Correo_administrador == null)
                {
                    Response.Write("<script>alert('Campos vacíos')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Buscó con Exito')</script>");
                    txtcodigoAdmin.Text = Convert.ToString(adm.Codigo_administrador);
                    txtNombre.Text = adm.Nombre_administrador;
                    txtApellido.Text = adm.Apellido_administrador;
                    txtUsuario.Text = adm.Usuario;
                    txtContraseña.Text = adm.Clave;
                    txtConcontraseña.Text = adm.Clave;
                    txtDocumento.Text = adm.Documento_administrador;
                    txtMovil.Text = adm.Celular_administrador;
                    txtCorreo.Text = adm.Correo_administrador;
                    
                }
            }
            catch (Exception err)
            {
                Response.Write("<script>alert('" + err.Message + "')</script>");
            }
        }

        protected string[] CrearObjeto()
        {
            string[] objeto = 
            {
                txtcodigoAdmin.Text,
                txtNombre.Text,
                txtApellido.Text,
                txtUsuario.Text,
                txtConcontraseña.Text,
                txtDocumento.Text,
                txtMovil.Text,
                txtCorreo.Text
            };

            return objeto;
        }

        protected void LimpiarCampos()
        {
            txtcodigoAdmin.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
            txtConcontraseña.Text = "";
            txtDocumento.Text = "";
            txtMovil.Text = "";
            txtCorreo.Text = "";
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {

        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}