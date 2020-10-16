package com.flor.modelo;

public class Materia {
	
	private int id;
	private String clave;
	private String nombre;
	private int semestre;
	private String carrera;
	private int creditos;
	private int horas_t;
	private int horas_p;
	
	public Materia(int id, String clave, String nombre, int semestre, String carrera, int creditos, int horas_t,
			int horas_p) {
		super();
		this.id = id;
		this.clave = clave;
		this.nombre = nombre;
		this.semestre = semestre;
		this.carrera = carrera;
		this.creditos = creditos;
		this.horas_t = horas_t;
		this.horas_p = horas_p;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getSemestre() {
		return semestre;
	}
	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}
	public String getCarrera() {
		return carrera;
	}
	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}
	public int getCreditos() {
		return creditos;
	}
	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}
	public int getHoras_t() {
		return horas_t;
	}
	public void setHoras_t(int horas_t) {
		this.horas_t = horas_t;
	}
	public int getHoras_p() {
		return horas_p;
	}
	public void setHoras_p(int horas_p) {
		this.horas_p = horas_p;
	}
}
