package com.flor.modelo;

import java.sql.*;

public class Conexion {
	
	private Connection Connection;
	private String URL;
	private String Username;
	private String Password;
	
	public Conexion(String URL, String Username, String Password) {
		this.URL=URL;
		this.Username=Username;
		this.Password=Password;
	}
	
	public int conectar(String usuario, String password) {
		int rol = 0;
		String sql = "SELECT rol FROM usuario WHERE usuario ='" +usuario+ "' and password='" +password+ "'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection = DriverManager.getConnection(URL,Username,Password);
			PreparedStatement statement = Connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				rol = rs.getInt(1);
			}
			Connection.close();
		}catch(ClassNotFoundException | SQLException e) {}
		return rol;
	}
	
	public void con() throws SQLException {
		if(Connection == null || Connection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			}catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			Connection = DriverManager.getConnection(URL, Username, Password);			
		}
	}
	
	public void desconectar() throws SQLException {
		if(Connection != null && !Connection.isClosed()) {
			Connection.close();
		}
	}
	
	public Connection getJdbcConnection() {
		return Connection;
	}
}
