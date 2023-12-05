<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Listado Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- Css -->
    <link rel="stylesheet" href="..//style.css">
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
        
 <style>
 .fuente {
 font-size: 13px;
 }
 
  
 </style>
    
  </head>
  
  <body>
  	<jsp:include page="menu.jsp"/>
	<div class="container">
		<div class="text-center listOra my-4">Listado Usuarios</div>
				
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='col-4 cartel-adv text-center m-3 p-1 rounded mx-auto' id='msj'>"); 
				out.println(mensaje);
				out.println("</div>");
			} else {
				//TODO: eliminar div del mensaje
				
			}	
		%>
				
		<table class="table table-striped">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#ID</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Apellido</th>
		      <th scope="col">DNI</th>
		      <th scope="col">Teléfono</th>
		      <th scope="col">Dirección</th>
		      <th scope="col">Operaciones</th>
		    </tr>
		  </thead>
		  <tbody>
			<!-- dentro de estas etiquetas podemos programar en java -->
			<% 
			//conectarnos a la db, traer la tabla usuarios y generar un html para enviar al usuario
			
			//traer el archivo/clase conexionDb
			ConexionDB conex=new ConexionDB();
			
			//conecto a la db y devuel un objeto statment que es una instancia de db
			Statement st=conex.conectar();
			
			//le hago la consulta sql, traigo la tabla usuarios
			ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
			
			while(rs.next()) {
				out.println("<tr class='fuente'>");
				
				out.println("<th>");
				out.println(rs.getInt("id"));
				out.println("</th>");

				out.println("<td style='font-weight: bold;'>");
				out.println(rs.getString("nombre"));
				out.println("</td>");
				
				out.println("<td style='font-weight: bold;'>");
				out.println(rs.getString("apellido"));
				out.println("</td>");
				
				out.println("<td>");
				out.println(rs.getLong("dni"));
				out.println("</td>");
				
				out.println("<td>");
				out.println(rs.getLong("telefono"));
				out.println("</td>");
				
				out.println("<td>");
				out.println(rs.getString("direccion"));
				out.println("</td>");
				
				out.println("<td>");
				out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' data-bs-whatever='"+rs.getInt("id")+"'><i class='bi bi-trash-fill custom-icon  m-3'></i></a>");
				out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updateModal' idUpd='"+rs.getInt("id")+"'nom='"+rs.getString("nombre")+"'ape='"+rs.getString("apellido")+"'dni='"+rs.getLong("dni")+"'tel='"+rs.getLong("telefono")+"'dir='"+rs.getString("direccion")+"'><i class='bi bi-pencil-fill custom-icon '></i></a>");
				out.println("</td>");


				out.println("</tr>");
				
			}
			
			%>		
		   
		  </tbody>
		</table>
		

		
	</div>  
	
	<!-- Modal eliminar -->	
	
	<div class="modal fade fuente" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Usuario</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="../controller/delUsuario.jsp" method="post">
	          <div class="mb-3 text-center">
	            <label for="recipient-name" class="col-form-label">¿Desea eleminar el usuario seleccionado?</label>
	            <input type="hidden" class="form-control" id="recipient-name" name="id">
	          </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
		        <button type="submit" class="btn btn-primary boton-lista">Eliminar</button>
		      </div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	

	<!-- Modal editar -->

	<div class="modal fade fuente" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Usuario</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/updUsuario.jsp" method="post">
		          <div class="mb-3 text-center">
		            <label for="recipient-name" class="col-form-label">¿Desea modificar el usuario seleccionado?</label>
		            <input type="hidden" class="form-control mb-3" id="idUpd" name="idUpd">
		            <input type="text" class="form-control mb-3" id="nom" name="nom">
		            <input type="text" class="form-control mb-3" id="ape" name="ape">
		            <input type="text" class="form-control mb-3" id="dni" name="dni">
		            <input type="text" class="form-control mb-3" id="tel" name="tel">
		            <input type="text" class="form-control mb-3" id="dir" name="dir">
		          </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-primary boton-lista">Editar</button>
			      </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
	  

	<script src="js/listUsu.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>