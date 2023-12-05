<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Listado de Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

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
		<div class="text-center my-4 listOra">Listado de Productos</div>
		
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='col-4 cartel-adv text-center m-1 p-1 rounded mx-auto' id='msj'>"); 
				out.println(mensaje);
				out.println("</div>");
			} else {
				//TODO: eliminar div del mensaje
				
			}	
		%>			
		
		<button class="btn btn-primary boton-lista my-3" data-bs-toggle='modal' data-bs-target='#addModal'>Agregar productos</button>
		
		<table class="table table-striped">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#ID</th>
		      <th scope="col">Producto</th>
		      <th scope="col">Descripción del producto</th>
		      <th scope="col">Cantidad</th>
		      <th scope="col">Precio</th>
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
			ResultSet rs=st.executeQuery("SELECT * FROM oradores");
			
			while(rs.next()) {
				out.println("<tr class='fuente'>");
				
				out.println("<th>");
				out.println(rs.getInt("id"));
				out.println("</th>");

				out.println("<td style='font-weight: bold;'>");
				out.println(rs.getString("producto"));
				out.println("</td>");
				
				out.println("<td style=' font-style: italic;'>");
				out.println(rs.getString("descripcion"));
				out.println("</td>");
				
				out.println("<th>");
				out.println(rs.getString("cantidad"));
				out.println("</th>");
				
				out.println("<th>");
				out.println(rs.getInt("precio"));
				out.println("</th>");
				
							
				out.println("<td>");
				out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' data-bs-whatever='"+rs.getInt("id")+"'><i class='bi bi-trash-fill custom-icon m-3'></i></a>");
				out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updateModal' idUpd='"+rs.getInt("id")+"'prod='"+rs.getString("producto")+"'desc='"+rs.getString("descripcion")+"'cant='"+rs.getInt("cantidad")+"'pre='"+rs.getInt("precio")+"'><i class='bi bi-pencil-fill custom-icon'></i></a>");
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
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Producto</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="../controller/delOrador.jsp" method="post">
	          <div class="mb-3 text-center">
	            <label for="recipient-name" class="col-form-label">¿Desea eleminar el producto seleccionado?</label>
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
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Producto</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/updOrador.jsp" method="post">
		          <div class="mb-3 text-center">
		            <label for="recipient-name" class="col-form-label">¿Desea modificar el producto seleccionado?</label>
		            <input type="hidden" class="form-control mb-3" id="idUpd" name="idUpd">
		            <input type="text" class="form-control mb-3" id="prod" name="prod">
		            <input type="text" class="form-control mb-3" id="desc" name="desc">
		            <input type="text" class="form-control mb-3" id="cant" name="cant">
		            <input type="text" class="form-control mb-3" id="pre" name="pre">
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
		
		
	<!-- Agregar Producto -->	
	<div class="modal fade fuente" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Producto</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="../controller/addOrador.jsp" method="post">
	          <div class="mb-3 text-center">
	            <input type="text" class="form-control mb-3" id="prodAdd" name="prodAdd" placeholder="Producto">
	            <input type="text" class="form-control mb-3" id="descAdd" name="descAdd" placeholder="Descripción">
	            <input type="text" class="form-control mb-3" id="cantAdd" name="cantAdd" placeholder="Cantidad">
	            <input type="date" class="form-control mb-3" id="fechaAdd" name="fechaAdd" placeholder="Fecha de Alta">
	            <input type="text" class="form-control mb-3" id="preAdd" name="preAdd" placeholder="Precio">
	            <input type="file" class="form-control mb-3" id="fotoPerfilAdd" name="fotoPerfilAdd" placeholder="Foto Perfil">
	          </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
		        <button type="submit" class="btn btn-primary boton-lista">Agregar</button>
		      </div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>







	<script src="js/listOra.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>