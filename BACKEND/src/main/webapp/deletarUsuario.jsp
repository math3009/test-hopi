<%@page import = "com.projetoanuali.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.projetoanuali.bean.Usuario"></jsp:useBean>
<jsp:setProperty property ="*" name = "u"/>

<% 
	UsuarioDao.deletarUsuario(u);
	response.sendRedirect("listaVisitas.jsp");
%>