<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
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
  
  <body>
  
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
	<div class="container ">
		<div class="text-center fs-3 my-4">Iniciar Sesión</div>
		
		<div class="d-flex justify-content-center">
			<form action="../controller/checkLogin.jsp" method="post">
				<input style=" background: #ffa5b3;" type="email" name="user" class="form-control mb-3" placeholder="Usuario" required>
				<input style=" background: #ffa5b3;" type="password" name="pass" class="form-control mb-3" placeholder="Contraseña" required>
				<input type="submit" value="Enviar" class="btn login-jsp fuente fs-6 d-block mx-auto btn-primary mb-3">
			</form>
		</div>
		
		<div class="text-center fs-6 my-1">
			 <p class="mt-3 text-center">¿No tienes cuenta? <a style="text-decoration: none; color: #ffa5b3; font-weight: bold;" href="registro.jsp">Crear cuenta</a>
		</div>
		
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='col-4 cartel-adv text-center m-1 p-1 rounded mx-auto'>");
				out.println(mensaje);
				out.println("</div>");
			}	
		%>		
	</div>   
	
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


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>