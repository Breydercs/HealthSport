<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Basquetbol.aspx.cs" Inherits="HealthSport.Basquetbol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Basquetbol.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="fonts-awesome/font-awesome/css/font-awesome.css" />
    <title>Basquetbol</title>
        
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <div class="navbar navbar-default navbar-fixed-top" role="navigation">
               <div class="container">
                   <div class="navbar-header">
                       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                       <!--<asp:Button ID="btn" runat="server" Text="fdgfdg" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"/>-->
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
                                   <li><a href="Futsal.aspx">Fútsal</a></li>
                                   <li class="active"><a href="#">Basquetbol</a></li>
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
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Galeria<b class="caret"></b></a>
                               <ul class="dropdown-menu">
                                   <!--<li class="dropdown-header">Men</li>-->
                                   <li> <a href="#">Fotos</a></li>
                                   <li> <a href="#">Videos</a></li>
                                   <li> <a href="#">Documentos</a></li>
                                 </ul>
                           </li>
                           
                           <li>
                               <button type="button" data-toggle="modal" data-target=".bootstrapmodal" class="btn btn-primary btn-default navbar-btn">Entrar</button>
                               <!--<a class="btn btn-success" data-toggle="modal" data-target=".bootstrapmodal">Entrar</a>-->
                               <!--<asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="btn btn-success navbar-btn" OnClick="btnRegistro_Click" />-->
                              

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
    </form>

    <!-- Inicio Opciones Futsal-->
    <section>
        <div class="container marketing">
            <div class="jumbotron">
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg0"></div>
                                <div class="panel-body text-center">
                                    <!-- para obtener un logo o una imagen en la mitad del div -->
                                <!--<img id="logo" class="panel-profile-img" src="imagenes/logo1.jpg" />-->
                                <h4>Equipos</h4>
                                <p class="m-b" style="font-size: 20px;">En esta campo se veran los equipos a jugar.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div>
                       <div class="col-md-4">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg1"></div>
                                <div class="panel-body text-center">
                                <!-- <img class="panel-profile-img" src="imagenes/logo1.jpg" /> -->
                                <h4>Programación</h4>
                                <p class="m-b" style="font-size: 20px;">En esta campo se vera la programación de los equipos.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div> 
                       <div class="col-md-4">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg2"></div>
                                <div class="panel-body text-center">
                                <img class="panel-profile-img" src="imagenes/logo1.jpg" />
                                <h4>Resultados</h4>
                                <p class="m-b" style="font-size: 20px;">Creator of Bootstrap, engineer at Twitter &amp; Medium. Founder of Bumpers.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div> 
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg3"></div>
                                <div class="panel-body text-center">
                                <img class="panel-profile-img" src="imagenes/logo1.jpg" />
                                <h4>Anotadores</h4>
                                <p class="m-b" style="font-size: 20px;">Creator of Bootstrap, engineer at Twitter &amp; Medium. Founder of Bumpers.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div>
                       <div class="col-md-6">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg4"></div>
                                <div class="panel-body text-center">
                                <img class="panel-profile-img" src="imagenes/logo1.jpg" />
                                <h4>Posiciones</h4>
                                <p class="m-b" style="font-size: 20px;">Creator of Bootstrap, engineer at Twitter &amp; Medium. Founder of Bumpers.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div> 
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg5"></div>
                                <div class="panel-body text-center">
                                <img class="panel-profile-img" src="imagenes/logo1.jpg" />
                                <h4>Arbitros</h4>
                                <p class="m-b" style="font-size: 20px;">Creator of Bootstrap, engineer at Twitter &amp; Medium. Founder of Bumpers.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div> 
                       <div class="col-md-6">
                        <div class="panel panel-default panel-profile m-b-0">
                            <div class="panel-heading bg6"></div>
                                <div class="panel-body text-center">
                                <!--<img class="panel-profile-img" src="imagenes/logo1.jpg" />-->
                                <h4>Escenarios</h4>
                                <p class="m-b" style="font-size: 20px;">Creator of Bootstrap, engineer at Twitter &amp; Medium. Founder of Bumpers.</p>
                                <a class="btn btn-success" href="#" role="button">Ver>></a>
                                </div>
                            </div>
                       </div> 
                </div>
            </div>
        </div>
    </section>
    <!-- Fin Opcionmes Futsal -->

    <!-- Inicio Footer -->    
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
</body>
</html>

