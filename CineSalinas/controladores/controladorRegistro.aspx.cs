using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineSalinas.controladores
{
    public partial class controladorRegistro : System.Web.UI.Page
    {
        CineSalinasEntities cse = new CineSalinasEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string Xcorreo = Request["txtCorreo"];
            string Xclave = Request["txtClave2"];
            string Xnombre = Request["txtNombre"];
            string Xapellido = Request["txtApellido"];

            if (Xcorreo.Trim().Equals("") || Xclave.Trim().Equals("") || Xnombre.Trim().Equals("") || Xapellido.Trim().Equals(""))
            {
                Session["mensaje2"] = "Complete todos los campos";
                Response.Redirect("../vistas/registro.aspx");
            }

            try
            {
                usuarios us = (from u1 in cse.usuarios where u1.correo == Xcorreo select u1).First();
                Session["mensaje2"] = "Este correo ya está registrado";
                Response.Redirect("../vistas/registro.aspx");
            }
            catch (InvalidOperationException)
            {
                usuarios u = new usuarios()
                {
                    correo = Xcorreo,
                    nombre = Xnombre,
                    apellido = Xapellido,
                    clave = Xclave,
                    tipo = "c",

                };

                cse.AddObject("usuarios", u);
                cse.SaveChanges();
                Session["mensaje2"] = "Usuario registrado";
                Response.Redirect("../vistas/registro.aspx");
            }
        }
    }
}