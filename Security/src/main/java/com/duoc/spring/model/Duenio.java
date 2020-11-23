package com.duoc.spring.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Duenio {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Size(min = 1, message = "Nombre Requerido")
	@Size(max = 50, message = "Máximo 50 carácteres")
	@Column(name = "nombre", length = 50, nullable = false)
	private String nombre;
	
	@Size(min = 1, message = "Apellido Requerido")
	@Size(max = 50, message = "Máximo 50 carácteres")
	@Column(name = "apellido", length = 50, nullable = false)
	private String apellido;
	
	@Size(min = 1, message = "Dirección Requerida")
	@Size(max = 50, message = "Máximo 50 carácteres")
	@Column(name = "direccion", length = 50, nullable = false)
	private String direccion;
	
	@Size(min = 1, message = "Ciudad Requerida")
	@Size(min = 1, message = "Máximo 50 carácteres")
	@Column(name = "ciudad", length = 50, nullable = false)
	private String ciudad;

	@Size(min = 1, message = "Requerido")
	@Size(max = 12, message = "Máximo 12 carácteres")
	@Column(name = "telefono", length = 12, nullable = false)
	private String telefono;
	
	@OneToMany
	private List<Mascota> mascota;

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
	 * @return the apellido
	 */
	public String getApellido() {
		return apellido;
	}

	/**
	 * @param apellido the apellido to set
	 */
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	/**
	 * @return the direccion
	 */
	public String getDireccion() {
		return direccion;
	}

	/**
	 * @param direccion the direccion to set
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	/**
	 * @return the ciudad
	 */
	public String getCiudad() {
		return ciudad;
	}

	/**
	 * @param ciudad the ciudad to set
	 */
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	/**
	 * @return the telefono
	 */
	public String getTelefono() {
		return telefono;
	}

	/**
	 * @param telefono the telefono to set
	 */
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	/**
	 * @return the mascota
	 */
	public List<Mascota> getMascota() {
		return mascota;
	}

	/**
	 * @param mascota the mascota to set
	 */
	public void setMascota(List<Mascota> mascota) {
		this.mascota = mascota;
	}
	
	
}
