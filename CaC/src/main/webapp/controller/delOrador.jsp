<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String id=request.getParameter("id");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer deleteOk=st.executeUpdate("DELETE FROM oradores WHERE id="+id);
		
		if(deleteOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20se%20eliminó%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20no%20se%20puedo%20eliminar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20no%20se%20puedo%20eliminar");
	}
	
	
	

%>