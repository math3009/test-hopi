<%@page import="com.projetoanuali.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.projetoanuali.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name= "u" />

<%
	int i = UsuarioDao.salvarUsuario(u);
	response.sendRedirect("listaVisitas.jsp");
%>