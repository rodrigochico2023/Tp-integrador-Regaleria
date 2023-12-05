<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String prod=request.getParameter("prodAdd");
	String desc=request.getParameter("descAdd");
	String cant=request.getParameter("cantAdd");
	String pre=request.getParameter("preAdd");
	String fecha=request.getParameter("fechaAdd");
	String fotoPerfil=request.getParameter("fotoPerfilAdd");
	//TODO: como recibir un textarea desde aquí
	
	//String foto=request.getParameter("fotoAdd");
	
	
	//TODO: perdir en modal dni, etiquetas, temas
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer insertOk=st.executeUpdate("INSERT INTO oradores (producto, descripcion, cantidad, precio, fecha_alta, fotoPerfil) VALUES ('"+prod+"','"+desc+"','"+cant+"',"+pre+",'"+fecha+"','"+fotoPerfil+"') ");
		
		if(insertOk==1) {
			response.setCharacterEncoding("UTF-8");
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20se%20agregó%20exitosamente");
		} else {
			response.setCharacterEncoding("UTF-8");
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20no%20se%20pudo%20agregar");
		}

	}
	catch(Exception e){
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20Producto%20no%20se%20pudo%20agregar");
		e.printStackTrace();
	}
	
	
	

%>