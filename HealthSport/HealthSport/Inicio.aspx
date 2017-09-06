    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="HealthSport.registro_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="fonts-awesome/font-awesome/css/font-awesome.css" />
    <title>Inicio</title>
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
                           <li class="active"><a href="Inicio.aspx">Inicio</a></li>
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
                               <!--<a class="btn btn-success" data-toggle="modal" data-target=".bootstrapmodal">Entrar</a>-->
                               <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="btn btn-success navbar-btn" OnClick="btnRegistro_Click" />
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
                            <asp:Button OnClick="btnentrar_Click" ID="btnentrar" runat="server" Text="Aceptar" type="button" class="btn btn-primary btn-lg btn-block"/>
                            <button type="button" class="btn btn-danger btn-lg btn-block" data-dismiss="modal">Cancelar</button> 
                        </div>

                        <div class="modal-footer">
                             <a href="#" class="text-right text-primary" style="text-decoration: none"><p>Crear una cuenta nueva</p></a>
                        </div>
                                      
                    </div>
                </div>
            </div>
        <!-- Fin ventana modal Login-->
            
        <!--  Inicio Carousel  -->
    <div class="container2">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <asp:Image ID="Image1" runat="server" src="imagenes/carou-futsal.jpg" alt="Futsal" style="height:413px; width:2658px;"/>
          </div>
        
          <div class="item">
            <asp:Image ID="Image2" runat="server" src="imagenes/carou-basquetbol.jpg" alt="Basquetbol" style="height:413px; width:2658px;"/>
          </div>
    
          <div class="item">
            <asp:Image ID="Image3" runat="server" src="imagenes/carou-voleibol.jpg" alt="Voleibol" style="height:413px; width:2658px;"/>
          </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    <!--  Fin Carou -->

    <!--  Inicio contenido  -->
    <div class="container" id="descripcion"><!--id="descripcion"-->
		<!--<img src="imagenes/salud.jpg" alt="imagen de la sald y el deporte">-->
			<h1>HealtSport</h1>
			<br/>
			<p>Por medio de la anamnesis, HealtSport <br /> obtendrá los resultados de las actividades<br />
               Psicomotoras mediante diferentes test. <br/>
               Con este resultado obtenido se dara<br/> a conocer que deporte puede practicar el aprendiz.</p>
		</div>
		<div class="container" id="frase">
			<!--<h3>No basta tener buena salud y un buen cuerpo, lo principal es aprovecharlo al maximo "</h3>-->
			<h2>"La salud no lo es todo pero sin ella, todo lo demás es nada"</h2>
			<footer>
				<h1>-Schopenhauer, A.</h1>
			</footer>
		</div>
        <div class="jumbotron" id="jumbotronNosotros">
            <div id="titulonosotros">
				<h2><u>Nosotros</u></h2>
			</div>
			
	    <div class="container">
		    <div class="row" id="mision-vision">
			    <div class="col-xs-12 col-md-4">
                    <span class="fa-stack fa-3x">
	  				    <i class="fa fa-circle fa-stack-2x"></i>
	  				    <i class="fa fa-flag fa-stack-1x fa-inverse"></i>
				    </span>
                    <h3>Misión</h3>
				    <p id="pa1">xxxxxxxxxxxxxxxxxxxxxxxxxxxx
				    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
				    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
				    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
			    </div>
			    <div class="col-xs-12 col-md-4"></div>
                <div class="col-xs-12 col-md-4">
                    <span class="fa-stack fa-3x">
					    <i class="fa fa-circle fa-stack-2x"></i>
					    <i class="fa fa-binoculars fa-stack-1x fa-inverse"></i>
				    </span>
				    <h3>Visión</h3>
				    <p id="pa2">Cada año proporcionarle a los aprendices una mejor experiencia en los deportes, para así llegar a ser el mejor centro en cuanto al 
                               nivel Deportivo.
				    </p>

                </div>
		    </div>
            <div class="row" id="valores">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <span class="fa-stack fa-3x">
					    <i class="fa fa-circle fa-stack-2x"></i>
					    <i class="fa fa-star fa-stack-1x fa-inverse"></i>
				    </span>
				    <h3>Valores</h3>
				    <br />
				    <p>Responsabilidad<br />Compromiso<br />Respeto<br />Calidad<br /></p>
                </div>
                <div class="col-md-4"></div>
            </div>	 	 
	    </div>	
	    </div>
        <!-- Inicio Footer -->
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
    <!--
        Footer   
        <section id="footer-wrapper">
            <div class="container">
                <div class="row">
                    <footer>
                        <p> &copy; xxxxxxxxxx  |2017</p>
                    </footer>
                </div>
            </div>
        </section>
    -->



    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
