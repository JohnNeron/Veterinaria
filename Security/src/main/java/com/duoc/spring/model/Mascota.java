package com.duoc.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Mascota {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Size(min = 1, message = "Nombre Requerido")
	@Size(max = 50, message = "Máximo 50 carácteres")
	@Column(name = "nombre", length = 50, nullable = false)
	private String nombre;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name ="fecha_de_nacimiento", length = 50, nullable = false)
	private Date fechaNacto;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "fecha_de_visita", length = 50, nullable = false)
	private Date fechaVisita;
	
	@Size(min = 1, message = "Requerido")
	@Size(max = 70, message = "Máximo 70 carácteres")
	@Column(name = "descripcion", length = 70, nullable = false)
	private String descripcion;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the fechaNacto
	 */
	public Date getFechaNacto() {
		return fechaNacto;
	}

	/**
	 * @param fechaNacto the fechaNacto to set
	 */
	public void setFechaNacto(Date fechaNacto) {
		this.fechaNacto = fechaNacto;
	}

	/**
	 * @return the fechaVisita
	 */
	public Date getFechaVisita() {
		return fechaVisita;
	}

	/**
	 * @param fechaVisita the fechaVisita to set
	 */
	public void setFechaVisita(Date fechaVisita) {
		this.fechaVisita = fechaVisita;
	}

	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}

	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
