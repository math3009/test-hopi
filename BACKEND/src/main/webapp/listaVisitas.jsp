<%@ page import = "com.projetoanuali.dao.UsuarioDao, com.projetoanuali.bean.*, java.util.*"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório</title>
    <link rel="stylesheet" href="css/listaVisitas.css">
</head>
<body>
	
    <div id="container-relatorio">
        <div id="container-logo">
            <img src="imgs/logoHopi.png" alt="">
        </div>

        <div id="container-txt">
            <span>Visitantes Cadastrados:</span>
        </div>
			<%
				List<Usuario> list = UsuarioDao.getAllUsuarios();
				request.setAttribute("list", list);
			%>
        <div id="table">
            <table id="myTable">
                <tr id="0">
                    <th>RG</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Cidade</th>
                    <th>Data Inicial</th>
                    <th>Data Final</th>
                </tr>
                <c:forEach items="${list}" var="usuario">
	                <tr>
	                    <td>${usuario.getRg()}</td>
	                    <td>${usuario.getNome()}</td>
	                    <td>${usuario.getEmail()}</td>
	                    <td>${usuario.getTelefone()}</td>
	                    <td>${usuario.getCidade()}</td>
	                    <td>${usuario.getDataInicial()}</td>
	                    <td>${usuario.getDataFinal()}</td>
	                    <td><a href="editarVisitas.jsp?id=${usuario.getId()}"> <img src="imgs/editImage.png" alt=""></a></td>
                    	<td><a href="deletarUsuario.jsp?id=${usuario.getId()}"> <img src="imgs/deleteImage.png" alt=""></a></td>
	                </tr>
                </c:forEach>
            </table>
        </div>

        <div id="container-btn">
            <a href="addusuario.jsp">Novo Anuali</a>
        </div>

    </div>
</body>
</html>