<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String id=request.getParameter("id");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer deleteOk=st.executeUpdate("DELETE FROM usuarios WHERE id="+id);
		
		if(deleteOk==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20Usuario%20se%20elimin�%20exitosamente");
		} else {
			response.sendRedirect("../view/listadoUsuario.jsp?mensaje=El%20Usuario%20no%20se%20pudo%20eliminar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listadoUsuario.jsp?mensaje=El%20Usuario%20no%20se%20pudo%20eliminar");
	}
	
	
	

%>