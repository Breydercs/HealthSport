<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegEquiposFutsal.aspx.cs" Inherits="HealthSport.FutsalEquipos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/FutsalEquipos.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="fonts-awesome/font-awesome/css/font-awesome.css" />
    <title>Equipos Futsal</title>
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
                           
                           <li class="dropdown active">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Torneos<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                   <!--<li class="dropdown-header">Equipos</li>
                                       <li role="separator" class="divider"></li>-->
                                   <li class="active"><a href="Futsal.aspx">Fútsal</a></li>
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
                           <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Jugadores<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                    <li><a href="RegistroJugadores.aspx">Registrar Jugadores</a></li>
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
                               <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="btn btn-success navbar-btn" OnClick="btnRegistro_Click"/>

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
                <h2 id="equipos">Equipos</h2>
                <hr class="hr1" />
                <div class="col-md-2"></div>
                <div class="col-md-1" id="moverEqui1">
                    <asp:TextBox ID="txtcodEquipoF" runat="server" class="form-control" placeholder="Ref"></asp:TextBox>
                </div>
                <div class="col-md-4" id="moverEqui2">
                    <asp:TextBox ID="txtnEquipos" runat="server" class="form-control" placeholder="Nombre Equipo"></asp:TextBox>
                </div>
                <div class="col-md-3" id="moverEqui3">
                    <asp:TextBox ID="txtcodTorneo" runat="server" class="form-control" placeholder="Codigo Torneo"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <br />
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
                    <hr class="hr4"/>
                </div>
        </div>
    </section>
    <!-- Fin Equipos Fútsal-->

    <!-- Inicio Footer    
        <section id="footer-wrapper">
            <div class="container">
                <div class="row">
                    <footer>
                        <p> &copy; xxxxxxxxxx  |2017</p>
                    </footer>
                </div>
            </div>
        </section>
    <!-- Fin Footer-->

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
