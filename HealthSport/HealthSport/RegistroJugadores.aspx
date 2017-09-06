<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroJugadores.aspx.cs" Inherits="HealthSport.RegistroJugadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/RegistroJugadores.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="fonts-awesome/font-awesome/css/font-awesome.css" />
    <title>Registro Jugadores</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <div class="navbar navbar-default navbar-fixed-top" role="navigation">
               <div class="container">
                   <div class="navbar-header">
                       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                       
                           <span class="sr-only">Toggle navigation</span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>      
                       </button>
                       <a class="navbar-brand logo" href="Inicio.aspx"> <span> <img alt="logo" src="imagenes/icono.png" height="30" /></span>HealthSport</a>
                   </div>
                   <div class="navbar-collapse collapse">
                       <ul class="nav navbar-nav navbar-right">
                           <li><a href="Inicio.aspx">Inicio</a></li>
                           <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administrador de test<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                   <li><a href="#">Test</a></li>
                                   <li><a href="#">Resultado test</a></li>
                                   <li><a href="#">Recomendaciones</a></li>
                               </ul>
                           </li>
                           
                           <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Torneos<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                   <!--<li class="dropdown-header">Equipos</li>
                                       <li role="separator" class="divider"></li>-->
                                   <li><a href="Futsal.aspx">Fútsal</a></li>
                                   <li><a href="#">Basquetbol</a></li>
                                   <li><a href="#">Voleibol</a></li>
                                   <!--<li><a href="#">Equipos</a></li>
                                   <li><a href="#">Programación</a></li>
                                   <li><a href="#">Resultados</a></li>
                                   <li><a href="#">Goleadores</a></li>
                                   <li><a href="#">Posiciones</a></li>
                                   <li><a href="#">Arbitros</a></li>
                                   <li><a href="#">Escenarios</a></li>
                                   <li><a href="#">Premiaciones</a></li>-->
                               </ul>
                           </li>
                           <li class="dropdown active">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Jugadores<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                    <li class="active"><a href="RegistroJugadores.aspx">Registrar Jugadores</a></li>
                                   <li><a href="AsignarJugadores.aspx">Asignar jugadores</a></li>
                               </ul>
                           </li>
                           <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Galeria<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                   <!--<li class="dropdown-header">Men</li>-->
                                   <li> <a href="#">Fotos</a></li>
                                   <li> <a href="#">Videos</a></li>
                                   <li> <a href="#">Documentos</a></li>
                                 </ul>
                           </li>
                           
                           <li>
                               <button type="button" data-toggle="modal" data-target=".bootstrapmodal" class="btn btn-primary btn-default navbar-btn">Admin</button>
                               <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="btn btn-success navbar-btn" Onclick="btnRegistro_Click"/>
                           </li>
                           
                       </ul>
                   </div>
               </div>
           </div>
       </div>

        <!-- * Ventana modal para el login * -->
        <div class="modal fade bootstrapmodal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button data-dismmis="modal" class="close"><span>&times;</span></button>
                            <div class="modal-title"><h3 class="text-center"><strong>Entrar</strong></h3></div>
                        </div>

                        <div class="modal-body">
                            <br />
                            <div class="form-group has-success has-feedback">
                              <label class="control-label" for="inputSuccess2">Usuario</label>
                              <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">
                              <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                              <span id="inputSuccess2Status" class="sr-only">(success)</span>
                            </div>
                            <br />
                            <div class="form-group has-success has-feedback">
                              <label class="control-label" for="inputSuccess2">Contraseña</label>
                              <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">
                              <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                              <span id="inputSuccess2Status" class="sr-only">(success)</span>
                            </div>
                            <br />
                            
                            <asp:Button ID="btnentrar" runat="server" Text="Aceptar"  class="btn btn-primary btn-lg btn-block"/>
                            <button type="button" class="btn btn-danger btn-lg btn-block" data-dismiss="modal">Cancelar</button> 
                        </div>

                        <div class="modal-footer">
                             <a href="#" class="text-right text-primary" style="text-decoration: none"><p>Crear una cuenta nueva</p></a>
                        </div>
                                      
                    </div>
                </div>
            </div>
        <!-- Fin ventana modal Login-->
    

    <!-- Registro Equipos Fútsal-->
    <section id="registro">
        <div class="container registro1">
            <div class="row">
                <h2 id="dajugador">Jugadores</h2>
                <hr class="hr1"/>
                <div id="jugadores"></div>
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtcodigoAdmin" runat="server" class="form-control" placeholder="Codigo Jugador"></asp:TextBox> <!--onkeyup="validacion('txtNombre');" -->
                        <asp:Label ID="lblcodigoAdmin" Text="" runat="server" />
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Nombre Jugador"></asp:TextBox>
                        <asp:Label ID="lblNombres" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>
                <div class="row" id="">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtApellido" runat="server"  class="form-control" placeholder="Apellido Jugador"></asp:TextBox>
                        <asp:Label ID="lblApellidos" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtFicha" runat="server"  class="form-control" placeholder="Ficha"></asp:TextBox>
                        <asp:Label ID="lblFicha" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtDocumento" runat="server"  class="form-control" placeholder="Documento"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtMovil" runat="server" class="form-control" placeholder="Móvil"></asp:TextBox>
                        <asp:Label ID="lblMovil" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtCorreo" runat="server" class="form-control" placeholder="Correo Electronico"></asp:TextBox>
                        <asp:Label ID="lblCorreo" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div >
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnregJugador" runat="server" Text="Registrar" class="btn btn-success"/>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnConJugador" runat="server" Text="Consultar" class="btn btn-info"/>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnModJugador" runat="server" Text="Modificar" class="btn btn-warning"/>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnEliJugador" runat="server" Text="Eliminar" class="btn btn-danger"/>
                    </div>
                    
                    <br />
                    <hr class="hr2"/>
                </div>
        </div>
    </section>
    <!-- Fin Equipos Fútsal-->
        <!-- 
    Inicio Footer
        <div class="jumbotron" id="box-wrapper" >
            <div class="container">
                <div class="row">
		            <div class="nuestrosdatos col-md-4">
			            <h3><u>Nuestros datos</u></h3>
			            <div>
                            <br />
				            <h6><i class="fa fa-phone-square fa-2x"> 451 12 25</i></h6>
				            <h6 id="a"><i class="fa fa-envelope-square fa-2x"> Sena-deportes@sena.edu.co</i></h6>
				            <h6><i class="fa fa-map-marker fa-2x"> Carrera 68 #104, Complejo Norte <br />SENA Regional Antioquia, Medellín, Antioquia</i></h6>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <h3><u>Forma de contacto</u></h3>
                        <br />
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtnombCont" runat="server" class="form-control" placeholder="Nombre."></asp:TextBox>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtcorrCont" runat="server" class="form-control" placeholder="Correo."></asp:TextBox>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txttelCont" runat="server" class="form-control" placeholder="Telefono."></asp:TextBox>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <textarea class="form-control" rows="3" placeholder="Escribe tu mensaje."></textarea>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Footer -->

     <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </form>

    <script>
var isChanged = false;
$(function () {
    $('#ddlRol1,#ddlRol2').focusin(function () {
        if (!isChanged) {
// this removes the first item which is your placeholder if it is never changed
            $(this).find('option:first').remove();
        }
    });
    $('#ddlRol,#ddlRol2').change(function () {
// this marks the selection to have changed
        isChanged = true;
    });
    $('#ddlRol,#ddlRol2').focusout(function () {
        if (!isChanged) {
// if the control loses focus and there is no change in selection, return the first item
            $(this).prepend('<option selected="selected" value="0">Rol...</option>');
        }
    });
});
</script>
</body>
</html>
