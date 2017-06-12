using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineSalinas.controladores
{
    public partial class controladorLogin : System.Web.UI.Page
    {
        CineSalinasEntities cse = new CineSalinasEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string Xusuario = Request["txtUsuario"];
            string Xclave = Request["txtClave"];

            if (Xusuario.Trim().Equals("") || Xclave.Trim().Equals(""))
            {
                Session["mensaje"] = "Complete todos los campos";
                Response.Redirect("../vistas/inicio.aspx");
            }

            try
            {
                usuarios u = (from u1 in cse.usuarios where (u1.correo == Xusuario) && u1.clave == Xclave select u1).First();
                if (u.tipo.Equals("a"))
                {
                    Session["administrador"] = u.nombre + " " + u.apellido;
                    Response.Redirect("../vistas/administrador.aspx");
                }
                if (u.tipo.Equals("c"))
                {
                    Session["usuario"] = u.nombre + " " + u.apellido;
                    Response.Redirect("../vistas/inicio.aspx");
                }
            }
            catch (InvalidOperationException)
            {
                Session["mensaje"] = "Usuario/clave incorrectos";
                Response.Redirect("../vistas/inicio.aspx");
            }
        }
    }
}