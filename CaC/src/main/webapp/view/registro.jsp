<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrar usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <!-- Css -->
    <link rel="stylesheet" href="../style.css">
     
     <!-- Fuentes 1 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- Fuentes 2 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap"
        rel="stylesheet"> 
     
</head>

<body >
<div class="row mt-5 cortes">
        <div class="fuente fs-6 text-center m-1 text-white">
            Grupo: Regaleria - 2023. Integrantes: Iglesias Arduino, Paula - Cardozo, Esteban - Lo Giudice, Tamara - Kropp, Victoria - Chico, Rodrigo José.
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light fuente back-nav">
     <div class="container d-flex justify-content-center">
        <a class="navbar-brand mx-auto" href="../index.html">
            <img src="../imagenes/Logo Regal (1).png" width="100" height="100" alt="Logo">
        </a>
       
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <ul class="navbar-nav ml-auto justify-content-end">
                      
                        </ul>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </nav>
    
    
    
    <div class="bg-ligth border rounded m-3 p-2 d-flex flex-column align-items-center ">
    <div class="fs-4 my-3">Registro de Usuario</div>

    <div>
        <form action="../controller/addUser.jsp" method="post">

            <!-- Campos existentes -->
            <input style=" background: #ffa5b3;" type="email" onkeyup="validarUser()" name="user" id="user" class="form-control mb-3" placeholder="Usuario" required>
            <div class="input-group mb-3">
                <input style=" background: #ffa5b3;" type="password" id="pass" name="pass" onkeyup="validarPassDiscriminada()" class="form-control" placeholder="Contraseña" aria-label="Username" aria-describedby="basic-addon1">
                <span class="input-group-text" id="basic-addon1">
                    <a href="#">
                        <i style=" color: #ffa5b3;"  class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
                    </a>
                </span>
            </div>
            <input style=" background: #ffa5b3;" type="text" name="repPass" id="repPass" onkeyup="passIguales()" class="form-control mb-3" placeholder="Reingrese Contraseña" required>
            <div id="mensaje"></div>

            <!-- Nuevos campos -->
            <label class="fuente-registro" for="fotoPerfil">Foto de Perfil</label>
            <input  style=" background: #ffa5b3;" type="file" name="fotoPerfil" id="fotoPerfil" class="form-control mb-3 fuente-registro">

            <label  class="fuente-registro" for="nombre">Nombre</label>
            <input style=" background: #ffa5b3;" type="text" name="nombre" id="nombre" onkeyup="validarNombre()" class="form-control mb-3" placeholder="Nombre" required>

            <label class="fuente-registro" for="apellido">Apellido</label>
            <input style=" background: #ffa5b3;" type="text" name="apellido" id="apellido" onkeyup="validarApellido()" class="form-control mb-3" placeholder="Apellido" required>

            <label class="fuente-registro" for="dni">DNI</label>
            <input style=" background: #ffa5b3;" type="text" name="dni" id="dni" onkeyup="validarDNI()" class="form-control mb-3" placeholder="DNI" required>

            <label class="fuente-registro" for="telefono">Teléfono</label>
            <input style=" background: #ffa5b3;" type="text" name="telefono" id="telefono" onkeyup="validarTelefono()" class="form-control mb-3" placeholder="Teléfono" required>

            <label class="fuente-registro" for="direccion">Dirección</label>
            <input style=" background: #ffa5b3;" type="text" name="direccion" id="direccion" onkeyup="validarDireccion()" class="form-control mb-3" placeholder="Dirección" required>

            <!-- Botones y mensaje -->
            <input type="submit" value="Registrar" class="btn login-jsp fuente fs-6 mx-auto btn-primary mb-3 ">
            <input type="reset" value="Limpiar" class="btn login-jsp fuente fs-6 mx-auto btn-primary mb-3 ">
        </form>
    </div>

    <% 
    String mensaje=request.getParameter("mensaje");
    if(mensaje!=null) {
        out.println("<div class='bg-danger text-center p-1 rounded'>");
        out.println(mensaje);
        out.println("</div>");
    }    
    %>

</div>
    
    
    
    
    
    
    
    
    
    
    
    
    
     <!--

    <div class="bg-ligth border rounded m-3 p-2 d-flex flex-column align-items-center ">
        <div class="fs-4 my-3">Registro de Usuario</div>
        <!-- <div class="fs-4 my-3" onmouseover="alert('hola')">Registro de Usuario</div> -->
             
        <!-- formualrio con usuario pass 
        <div>
            <form action="../controller/addUser.jsp" method="post">
                <input type="email" onkeyup="validarUser()" name="user" id="user" class="form-control mb-3" placeholder="usuario" required>
                <!-- <input type="password" onkeyup="mostrarFortCant()" name="pass" id="pass" class="form-control mb-3" placeholder="contraseÃ±a" required> 
                <div class="input-group mb-3">
                    <input type="password" id="pass" name="pass" onkeyup="validarPassDiscriminada()" class="form-control" placeholder="Constraseña" aria-label="Username" aria-describedby="basic-addon1">
                    <span class="input-group-text" id="basic-addon1">
                        <a href="#">
                            <i class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
                        </a>
                    </span>
                </div>
                  
                <input type="text" name="repPass" id="repPass" onkeyup="passIguales()" class="form-control mb-3" placeholder="reingrese Constraseña" required>
                <input type="submit" value="Registrar" class="btn btn-primary mb-3">
                <input type="reset" value="Limpiar" class="btn btn-primary mb-3">
                <div id="mensaje"></div>
            </form>

        </div>
        
	//	< 
	//	String mensaje=request.getParameter("mensaje");
	//	if(mensaje!=null) {
	//		out.println("<div class='bg-danger text-center p-1 rounded'>");
	//		out.println(mensaje);
	//		out.println("</div>");
	//	}	
	//	%>		

    </div>
    -->
    
     <!--  INICIO footer -->

    <footer class="footer m-3 ">
        <div class="footer">
            <div class="container-fluid">
                <div class="row ">

                    <div class="col-6">
                        <h4 class="footer-title font-body text-uppercase fuente fs-6 text-center">Navegación</h4>
                        <ul class="text-center">
                            <li class="list-unstyled">
                                <a class="text-decoration-none text-dark" href="#">PRODUCTOS</a>
                            </li>
                            <li class="list-unstyled">
                                <a class="text-decoration-none text-dark" href="#">RELOJERIA</a>
                            </li>
                            <li class="list-unstyled">
                                <a class="text-decoration-none text-dark" href="#">CARTERAS</a>
                            </li>

                        </ul>
                    </div>

                    

                    <div class="col-6">
                        <h4 class="footer-title font-body text-uppercase fuente fs-6 text-center">Contactanos</h4>
                        <ul class="text-center">
                            <li class="list-unstyled"> +54 9 (numero de telefono)</li>
                            <li class="list-unstyled">Tp-integradorRegaleria@gmail.com</li>
                            <li class="list-unstyled">Direccion</li>
                            <li class="list-unstyled">Horarios de atención</li>
                        </ul>
                    </div>
                </div>
                <div class="row mt-5 cortes">
                    <div class="footer-legal font-small-extra text-center m-3">
                        <img src="../imagenes/copyright.png" width="25" alt="copy">
                        Copyright Tp-Integrador Regaleria - 2023. Todos los derechos reservados.
                    </div>
                </div>
            </div>
        </div>
    </footer> 
    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

    <script src="js/registro.js"></script>    
</body>

</html>