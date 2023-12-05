<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	//conectarme a la db
	//validar que el user y pass existan
	// dar mensaje ok o error

	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	String repPass=request.getParameter("repPass");
	//agregado nuevo
	String fotoPerfil=request.getParameter("fotoPerfil");
	String nombre=request.getParameter("nombre");
	String apellido=request.getParameter("apellido");
	String dni=request.getParameter("dni");
	String telefono=request.getParameter("telefono");
	String direccion=request.getParameter("direccion");
	
	
	//TODO: comprobar que pass==repPass
	
	//out.println(user);
	//out.println(pass);
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer insOk=st.executeUpdate("INSERT INTO usuarios (user,pass,fotoPerfil,nombre,apellido,dni,telefono,direccion,rol) VALUES ('"+user+"','"+pass+"','"+fotoPerfil+"','"+nombre+"','"+apellido+"','"+dni+"','"+telefono+"','"+direccion+"','user')");
		
		if(insOk==1) {
			response.sendRedirect("../view/login.jsp?mensaje=El%20Usuario%20se%20creó%20exitosamente");
		} else {
			response.sendRedirect("../view/registro.jsp?mensaje=Error%20al%20crear%20el%20Usuario");		
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/registro.jsp?mensaje=Usuario%20existente");
		
	}
	
	
	

%>