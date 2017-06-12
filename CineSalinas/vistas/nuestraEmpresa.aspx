<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuestraEmpresa.aspx.cs" Inherits="CineSalinas.vistas.nuestraEmpresa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="../css/estilos.css" />
    <title>Cine Salinas</title>
</head>
<body id="bne">
    <form id="form1" runat="server">
    <div id="contenedor">
        <div id="izquierda"></div>
        <center><div id="centroNe">
            <div id="barra">
            <% if (Session["usuario"] == null)
               {%>
                <div id="login">
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                Usuario
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtUsuario" Text="" runat="server"></asp:TextBox> 
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                Clave
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtClave" runat="server"></asp:TextBox> 
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                                <center><asp:Button ID="btnLogin" runat="server" Text="  Login   " PostBackUrl="~/controladores/controladorLogin.aspx" /><asp:Button ID="btnRegistro" runat="server" Text="Registro" PostBackUrl="~/vistas/registro.aspx" /></center>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                                <center></center>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                                <center><div class="vac"><%Response.Write(Session["mensaje"]);
                                Session["mensaje"] = null;%></div></center>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
                <% }
                    else
                    {%>
                    <div id="usuario">
                        <asp:Table ID="Table2" runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                <%Response.Write("Bienvenido" + " " + Session["usuario"]);%>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Button ID="btnCerrarSesion" runat="server" Text="Salir" PostBackUrl="~/controladores/controladorSalir.aspx" Enabled="True" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                <%        
                    }
                   %>
            </div>
            <div id="menu">
                <div id="inicio"><a class="men" href="inicio.aspx">INICIO</a></div>
                <div id="cartelera">CARTELERA</div>
                <div id="proximosEstrenos">PRÓXIMAMENTE</div>
                <div id="tiposSalas"><a class="men" href="formatos.aspx">FORMATOS</a></div>
                <div id="cines"><a class="men" href="cines.aspx">CINES</a></div>
                <div id="promociones"><a class="men" href="promociones.aspx">PROMOCIONES</a></div>
                <div id="nuestraEmpresa"><a class="men" href="nuestraEmpresa.aspx">NUESTRA EMPRESA</a></div>
            </div>
            <div id="nuesEmp">
            <div id="reg2">Sobre Nuestra Empresa</div>
            <img class="ne1" src="../img/ne1.jpg" />
            <img class="ne1" src="../img/ne2.jpg" />
            </div>
            <div id="ne2">
            <p>Cine Salinas SpA. es la compañía de exhibición cinematográfica más grande de Chile con más de 10 salas en 3 complejos. Con la misión, de ser la mejor opción de entretenimiento, fortaleciendo nuestro liderazgo en la industria
            cinematográfica a nivel nacional, ofreciendo diversión,innovación y un servicio estelar.</p>
            <p>Desde sus inicios, Cine Salinas ha demostrado su liderazgo en el mercado y se ha consolidado a través del tiempo como un referente en la industria de la exhibición, con un constante apoyo a
            la producción cinematográfica nacional, nuevos proyectos de entretención y la permanente innovación con nuevas tecnologías en
            exhibición y servicios, ha demostrado ser una empresa líder en el mercado, en constante fomento de una sociedad íntegra y
            estrechamente ligada a la sociedad y la cultura.</p>
            <img class="ne2" src="../img/ne3.jpg" />
            <p>Potenciando siempre el desarrollo profesional de nuestro equipo de más de 200 funcionarios, cuenta con 3 complejos, 10 salas, más
            de 1000 butacas, Salas 3D® y Premium Class.</p><br />
            <p>Misión:</p><p>Ser la empresa líder en el rubro de la entretención, capaz de reconocer y superar las expectativas de nuestros clientes logrando la
            identificación con nuestra empresa a través de una experiencia inolvidable.</p>
            </div>
            </div></center>
        <div id="derecha"></div>
    </div>
    </form>
</body>
</html>
