package com.flor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.flor.modelo.*;


public class MateriaDAO {

	private Conexion con;
	private Connection connection;
	
	public MateriaDAO (String URL, String Username, String Password) throws SQLException {
		//System.out.println(jdbcURL);
		con = new Conexion(URL, Username, Password);
	}
	
	//INSERTAR UNA MATERIA
	public boolean insertar (Materia materia) throws SQLException{
		
		String sql = "INSERT INTO materias (id, clave, nombre, semestre, carrera, creditos, horas_t, horas_p) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		con.con();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, null);
		statement.setString(2, materia.getClave());
		statement.setString(3, materia.getNombre());
		statement.setInt(4, materia.getSemestre());
		statement.setString(5, materia.getCarrera());
		statement.setInt(6, materia.getCreditos());
		statement.setInt(7, materia.getHoras_t());
		statement.setInt(8, materia.getHoras_p());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
	
	//MOTRAR TODAS LAS MATERIAS
	public List<Materia> listarMaterias() throws SQLException {
	
		List<Materia> listaMateria = new ArrayList<Materia>();
		String sql = "SELECT * FROM materias";
		con.con();
		connection = con.getJdbcConnection();
		Statement statement = connection.createStatement();
		ResultSet resulSet = statement.executeQuery(sql);
		
		while(resulSet.next()) {
			int id = resulSet.getInt("id");
			String clave = resulSet.getString("clave");
			String nombre = resulSet.getString("nombre");
			int semestre = resulSet.getInt("semestre");
			String carrera = resulSet.getString("carrera");
			int creditos = resulSet.getInt("creditos");
			int horas_t = resulSet.getInt("horas_t");
			int horas_p = resulSet.getInt("horas_p");
			
			Materia materia = new Materia(id, clave, nombre, semestre, carrera,
					creditos, horas_t, horas_p);
			listaMateria.add(materia);
		}
		con.desconectar();
		return listaMateria;	
	}
	
	//OBTENER POR CLAVE
	public Materia obtenerClave(String clave) throws SQLException {
		
		Materia materia = null;
		
		String sql = "SELECT * FROM materias WHERE clave=?";
		con.con();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, clave);
		
		ResultSet res = statement.executeQuery();
		if(res.next()) {
			materia = new Materia(res.getInt("id"), res.getString("clave"), res.getString("nombre"), 
					res.getInt("semestre"), res.getString("carrera"), res.getInt("creditos"), res.getInt("horas_t"),
					res.getInt("horas_p"));
		}
		res.close();
		con.desconectar();
		
		return materia;
	}
	
	//ACTUALIZAR
	public boolean actualizar(Materia materia) throws SQLException {
		
		boolean rowActualizar = false;
		String sql = "UPDATE materias SET nombre=?, semestre=?, carrera=?, creditos=?, horas_t=?, horas_p=? WHERE clave= ?";
		con.con();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, materia.getNombre());
		statement.setInt(2, materia.getSemestre());
		statement.setString(3, materia.getCarrera());
		statement.setInt(4, materia.getCreditos());
		statement.setInt(5, materia.getHoras_t());
		statement.setInt(6, materia.getHoras_p());
		statement.setString(7, materia.getClave());
		
		rowActualizar = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowActualizar;
	}
	
	//ELIMINAR
	public boolean eliminar(Materia materia) throws SQLException {
		
		boolean rowEliminar = false;
		String sql = "DELETE FROM materias WHERE clave=?";
		con.con();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, materia.getClave());
		
		rowEliminar = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		
		return rowEliminar;
	}
	
}