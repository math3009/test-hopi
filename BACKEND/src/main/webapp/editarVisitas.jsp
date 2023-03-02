<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>

    <link rel="stylesheet" href="css/editarVisita.css">
</head>
<body>
	<%@page import="com.projetoanuali.bean.Usuario, com.projetoanuali.dao.UsuarioDao" %>
	<% String id = request.getParameter("id"); 
		Usuario user = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>

    <div id="container">

        <div id="container-logo">
            <div id="imgPerson">
                <button> <img src="imgs/iconPerson.png" alt=""> </button>
            </div>
    
            <div id="logoHopi">
                <img src="imgs/logoHopi.png" alt="">
            </div>
        </div>
        
        <form action="editusuario.jsp" method="post">
        
        	<div id="container-put">
	            <div id="form-left">
	                <label for="nome">Nome:*</label>
	                <input type="text" id="nome" name="nome" value="<%=user.getNome()%>">
	
	                <label for="email">Email:*</label>
	                <input type="email" id="email" name="email" value="<%=user.getEmail()%>">
	
	                <label for="rg">RG:*</label>
	                <input type="number" id="rg" name="rg" maxlength="8" value="<%=user.getRg()%>">              
	            </div>
	
	            <div id="form-right">
	
	                <label for="telefone">Telefone:</label>
	                <input type="number" id="telefone" name="telefone" value="<%=user.getTelefone()%>">
	
	                <label for="cidade">Cidade:</label>
	                <input type="text" id="cidade" name="cidade" value="<%=user.getCidade()%>">
	
	                <span>Validade:</span>
	                <div id="container-date">
	                    <label for="inicial">Inicial: </label>
	                    <input type="date" id="inicial" name="inicial" value="<%=user.getDataInicial()%>">
	
	                    <label for="final">Final: </label>
	                    <input type="date" id="final" name="final" value="<%=user.getDataFinal()%>">
	                </div>                
            </div>

        </div>
        
	        <div id="container-btn">
	            <a><input type="submit" value="Editar"></input></a>
	        </div>
        
        </form>

        

        

    </div>
</body>
</html>