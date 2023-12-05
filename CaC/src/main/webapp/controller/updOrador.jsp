<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String idUpd=request.getParameter("idUpd");
	String prod=request.getParameter("prod");
	String desc=request.getParameter("desc");
	String cant=request.getParameter("cant");
	String pre=request.getParameter("pre");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer updateOk=st.executeUpdate("UPDATE oradores SET producto='"+prod+"', descripcion='"+desc+"', cantidad='"+cant+"', precio='"+pre+"' WHERE id="+idUpd);
		
		if(updateOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20se%20modificó%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Prodructo%20no%20se%20pudo%20modificar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20Prodructo%20no%20se%20pudo%20modificar");

	}
	
	
	

%>