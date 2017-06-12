<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formatos.aspx.cs" Inherits="CineSalinas.vistas.formatos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="../css/estilos.css" />
    <title>Cine Salinas</title>
</head>
<body id="bf">
    <form id="form1" runat="server">
  <div id="contenedor">
        <div id="izquierda"></div>
        <center><div id="centroF">
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
            <div id="reg2">Formatos</div>
            <div class="format"><img class="p2" src="../img/formatos/f4.png" />
            <h4 class="for">XD es "Extreme Digital Cinema", un formato exclusivo de Cine Salinas:</h4>
            <ul class="formatos">
                <li>Pantalla gigante: dos veces el tamaño de una normal.</li>
                <li>El doble de nitidez que un full HD.</li>
                <li>Audio envolvente: 5000 watts de potencia.</li>
                <li>Mayor comodidad y espacio entre las butacas.</li>
            </ul></div>
            <div class="format"> <img class="p2" src="../img/formatos/f3.png" />
            <h4 class="for">Son las BUTACAS CON MOVIMIENTO de Cine Salinas: </h4>
            <ul class="formatos">
                <li>Se mueven según la acción de la película.</li>
                <li>En ellas tú controlas la intensidad del movimiento de manera individual.</li>
            </ul></div>
            <div class="format"><img class="p2" src="../img/formatos/f2.png" />
            <h4 class="for">Máxima comodidad en una sala de cine:</h4>
            <ul class="formatos">
                <li>Butacas de cuero eléctricas y 100% reclinables.</li>
                <li>Baños exclusivos.</li>
                <li>Lounge independiente.</li>
            </ul></div>
            <div class="format"><img class="p2" src="../img/formatos/f1.png" />
            <h4 class="for">Tu película es 3 veces más real y entretenida: </h4>
            <ul class="formatos">
                <li>Imágenes más nítidas, claras y ultrarealistas.</li>
                <li>Lentes disponibles para todo espectador y adaptables sobre anteojos ópticos.</li>
                <li>Disponibles también anteojos 3D para niños.</li>
                <li>Encuentra Real D 3D en todos los Cine Salinas del país.</li>
            </ul></div>
            </div>
            </div></center>
        <div id="derecha"></div>
    </div>
    </form>
</body>
</html>
