<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="CineSalinas.vistas.inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="Stylesheet" href="../css/estilos.css" />
    <title>Cine Salinas</title>
</head>
<body>
    <form id="form" runat="server">
    <div id="contenedor">
        <div id="izquierda"></div>
        <center><div id="centro">
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
            </div></center>
        <div id="derecha"></div>
    </div>
    </form>
</body>
</html>
