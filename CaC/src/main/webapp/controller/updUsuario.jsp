<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String idUpd=request.getParameter("idUpd");
	String nom=request.getParameter("nom");
	String ape=request.getParameter("ape");
	String dni=request.getParameter("dni");
	String tel=request.getParameter("tel");
	String dir=request.getParameter("dir");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer updateOk=st.executeUpdate("UPDATE usuarios SET nombre='"+nom+"', apellido='"+ape+"', dni='"+dni+"', telefono='"+tel+"', direccion='"+dir+"' WHERE id="+idUpd);
		
		if(updateOk==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20Usuario%20se%20modificó%20exitosamente");
		} else {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20Usuario%20no%20se%20pudo%20modificar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20Usuario%20no%20se%20pudo%20modificar");

	}
	
	
	

%>