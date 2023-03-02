package com.projetoanuali.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.PreparedStatement;

import com.projetoanuali.bean.Usuario;

public class UsuarioDao {
	
	public static Connection getConnection () {
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cadastroanuali", "root", "Math3006#");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	
	public static List<Usuario> getAllUsuarios () {
		List<Usuario> list = new ArrayList<Usuario>();
		
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Usuario user = new Usuario();
				user.setId(rs.getInt("id"));
				user.setNome(rs.getString("nome"));
				user.setEmail(rs.getString("email"));
				user.setRg(rs.getInt("rg"));
				user.setTelefone(rs.getString("telefone"));
				user.setCidade(rs.getString("cidade"));
				user.setDataInicial(rs.getString("data_inicial"));
				user.setDataFinal(rs.getString("data_final"));
				list.add(user);
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static Usuario getRegistroById (int id) {
		Usuario user = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM usuario WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				user = new Usuario();
				user.setId(rs.getInt("id"));
				user.setNome(rs.getString("nome"));
				user.setEmail(rs.getString("email"));
				user.setRg(rs.getInt("rg"));
				user.setTelefone(rs.getString("telefone"));
				user.setCidade(rs.getString("cidade"));
				user.setDataInicial(rs.getString("data_inicial"));
				user.setDataFinal(rs.getString("data_final"));				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		} return user;
	}
	
	public static int updateUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE usuario SET nome=?, rg=?, email=?, telefone=?, cidade=?, data_inicial=?, data_final=? WHERE id=?");
			
			ps.setString(1, u.getNome());
			ps.setInt(2, u.getRg());
			ps.setString(3, u.getEmail());			
			ps.setString(4, u.getTelefone());
			ps.setString(5, u.getCidade());
			ps.setString(6, u.getDataInicial());
			ps.setString(7, u.getDataFinal());
			ps.setInt(8, u.getId());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		} return status;
	}
	
	
	public static int salvarUsuario (Usuario u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO usuario (nome, rg, email, telefone, cidade, data_inicial, data_final) values "
					+ "(?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, u.getNome());
			ps.setInt(2, u.getRg());
			ps.setString(3, u.getEmail());			
			ps.setString(4, u.getTelefone());
			ps.setString(5, u.getCidade());
			ps.setString(6, u.getDataInicial());
			ps.setString(7, u.getDataFinal());
			
			status = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		} return status;
	}
	
	
	public static int deletarUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM usuario WHERE id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		} return status;
	}
	
	
	
	
	
	
	
	
	
	

}
