<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="HealthSport.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Registro.css" rel="stylesheet" />
    <link href="alertifyjs/css/alertify.css" rel="stylesheet"/>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <link rel="stylesheet" type="text/css" href="fonts-awesome/font-awesome/css/font-awesome.css" />
    <title>Registro usuario</title>
    
</head>
<body>
    <form id="form1" runat="server">
       <div>
               <div class="container">
           <div class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                                   <li><a href="#">Asignar jugadores</a></li>
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
                               <asp:Button ID="btnRegistro" runat="server" Text="Registrarse"  class="active btn btn-success navbar-btn" />
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
                              <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status"/>
                              <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                              <span  class="sr-only">(success)</span>
                            </div>
                            <br />
                            <div class="form-group has-success has-feedback">
                              <label class="control-label" for="inputSuccess2">Contraseña</label>
                              <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status"/>
                              <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                              <span class="sr-only">(success)</span>
                            </div>
                            <br />
                            <asp:Button ID="btnentrar" runat="server" Text="Aceptar" type="button" class="btn btn-primary btn-lg btn-block" OnClick="btnentrar_Click"/>
                            <button type="button" class="btn btn-danger btn-lg btn-block" data-dismiss="modal">Cancelar</button> 
                        </div>

                        <div class="modal-footer">
                             <a href="#" class="text-right text-primary" style="text-decoration: none"><p>Crear una cuenta nueva</p></a>
                        </div>
                                      
                    </div>
                </div>
            </div>
        <!-- Fin ventana modal Login-->

         <!--Registro del usuario-->
        <section id="registro">
            <div class="container">
                <h2 id="Hregistro">Administrador</h2>
                <hr class="hr2"/>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        <br />
                        <asp:TextBox ID="txtcodigoAdmin" runat="server" class="form-control" placeholder="Codigo Administrador"></asp:TextBox> <!--onkeyup="validacion('txtNombre');" -->
                        <asp:Label ID="lblcodigoAdmin" Text="" runat="server" />
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <br />
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Nombre Administrador"></asp:TextBox>
                        <asp:Label ID="lblNombres" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>
                
                <br />
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtApellido" runat="server"  class="form-control" placeholder="Apellido Administrador"></asp:TextBox>
                        <asp:Label ID="lblApellidos" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtUsuario" runat="server"  class="form-control" placeholder="Usuario"></asp:TextBox>
                        <asp:Label ID="lblUsuarios" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>

                <br />

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtContraseña" runat="server" Type="password" class="form-control" placeholder="Contraseña"></asp:TextBox>
                        <asp:Label ID="lblContraseñas" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <asp:TextBox ID="txtConcontraseña" runat="server" Type="password" class="form-control" placeholder="Confirmar Contraseña"></asp:TextBox>
                        <asp:Label ID="lblConcontraseñas" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>

                <br />

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 col-lg-3">
                        
                        <asp:TextBox ID="txtDocumento" runat="server"  class="form-control" placeholder="Documento"></asp:TextBox>
                        <asp:Label ID="lblDocumento" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        
                        <asp:TextBox ID="txtMovil" runat="server" class="form-control" placeholder="Móvil"></asp:TextBox>
                        <asp:Label ID="lblMovil" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div>

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <br />
                        <asp:TextBox ID="txtCorreo" runat="server" class="form-control" placeholder="Correo Electronico"></asp:TextBox>
                        <asp:Label ID="lblCorreo" runat="server" Text=""></asp:Label>
                        <span class="help-block"></span>
                    </div>
                    <div class="col-md-3"></div>
                </div >
                <hr id="hr3"/>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary btn-default" OnClick="btnGuardar_Click" />
                    </div>
                     <div class="col-md-1">
                        <asp:Button ID="btnConAdmin" runat="server" Text="Consultar" class="btn btn-info" OnClick="btnConAdmin_Click"/>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnModJugador" runat="server" Text="Modificar" class="btn btn-warning"/>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnEliJugador" runat="server" Text="Eliminar" class="btn btn-danger"/>
                    </div>
                </div>
            </div>  
        </section>
        

        <asp:GridView ID="admin" runat="server" AutoGenerateColumns="false" class="table"
                OnRowCancelingEdit="rowCancelEditEvent"
                OnRowDeleting="rowDeletingEvent"
                OnRowEditing="rowEditingEvent"
                OnRowUpdating="rowUpdatingEvent" DataKeyNames="codigo_administrador">

            <Columns>
                <asp:TemplateField HeaderText="CODIGO" >
                    <ItemTemplate>
                        <asp:Label ID="lblCodigo" runat="server" Text='<% # Bind("codigo_administrador")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcodigo" runat="server" Text='<% # Bind("codigo_administrador")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="NOMBRE" >
                    <ItemTemplate>
                        <asp:Label ID="lblNombre" runat="server" Text='<% # Bind("nombre_administrador")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNombre" runat="server" Text='<% # Bind("nombre_administrador")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />

            </Columns>
        </asp:GridView>

    </form>
     
    <script src="chosen.jquery.js"></script>
    <script>
        $('.chosen-select').chosen();
    </script>

    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validacion-reg.js"></script>
    <script src="alertifyjs/alertify.js"></script>

    <script>
        var isChanged = false;
        $(function () {
            $('#ddlSexo').focusin(function () {
                if (!isChanged) {
                    // this removes the first item which is your placeholder if it is never changed
                    $(this).find('option:first').remove();
                }
            });
            $('#ddlSexo').change(function () {
                // this marks the selection to have changed
                isChanged = true;
            });
            $('#ddlSexo').focusout(function () {
                if (!isChanged) {
                    // if the control loses focus and there is no change in selection, return the first item
                    $(this).prepend('<option selected="selected" value="0">Seleccione...</option>');
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {

            $("#txtcodigoAdmin").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblcodigoAdmin").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblcodigoAdmin").html('');
                }
            });

            $("#txtApellido").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblApellidos").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblApellidos").html('');
                }
            });

            $("#txtCorreo").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblCorreos").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblCorreos").html('');
                }
            });

            $("#txtUsuario").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblUsuarios").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblUsuarios").html('');
                }
            });

            $("#txtContraseña").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblContraseñas").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblContraseñas").html('');
                }
            });

            $("#txtConcontraseña").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblConcontraseñas").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblConcontraseñas").html('');
                }
            });

            $("#sele").focusout(function () {
                var nombre = ($(this).val());
                if (nombre == "Seleccionar...") {
                    $("#lblSeleccionar").html("Selecciona un tipo de documento")
                }
                else {
                    $("#lblSeleccionar").html('');
                }
            });

            $("#txtDocumento").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblDocumentos").html("el campo no puede estar vacío")
                }
                else {
                    $("#lblDocumentos").html('');
                }
            });
            /*
            $("#ddlSexo").focusout(function () {
                var nombre = ($(this).val());
                if (nombre == "Rol...") {
                    $("#ddlSexo").html("Selecciona un tipo de sexo")
                }
                else {
                    $("#ddlSexo").html("");
                }
            }); */

            $("#txtTelefono").focusout(function () {
                var nombre = ($(this).val());
                if (nombre.length == 0) {
                    $("#lblTelefonos").html("El campo no puede estar vacío")
                }
                else {
                    $("#lblTelefonos").html("");
                }
            });


        });
        
        $("#txtGuardar").click(function () {
            if ("#txtTelefono".length == 0) {
                
            
                
            } else {
                alertify.confirm('Confirmación', 'Confirmar registro.', function () { alertify.success('Registro Exitoso!!') }
                , function () { alertify.error('Registro Cancelado') });
            }

            });
        
        
        
    </script>
    <!--  Java Script FUNCION VALIDACION  -->
    
    <script>

        function validacion(campo) {

            if (campo == 'txtNombre') {
                //Esta funcion lo que hace es pasar el valor del campo 'txtnombre' a la variable name.
                name = document.getElementById(campo).value;
                if (name == null || name.length == 0 || /^\s+$/.test(name)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Ingrese su nombre completo").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;

                } else {
                    if (/^[A-Za-z áÁéÉíÍóÓúÚñÑüÜ\s]+$/.test(name) == false) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                        $('#' + campo).parent().children('span').text("Ingrese su nombre completo").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else {
                        $('#' + campo).parent().children('span').hide();
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                        $('#' + campo).parent().children('span').text("Ingrese su nombre completo").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return true;
                    }
                }
            }
        }

    </script>
   
    <!-- fIN fUNCION-->
</body>
</html>
