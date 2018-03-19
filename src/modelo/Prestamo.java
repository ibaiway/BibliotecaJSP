package modelo;

import java.util.Date;

public class Prestamo {

	private int id;
	private Libro Libro;
	private Usuario Usuario;
	private Date fechaPrestamo;
	private Date fechaLimite;
	private boolean entragado;
	
	
	public Libro getLibro() {
		return Libro;
	}
	public void setLibro(Libro libro) {
		Libro = libro;
	}
	public Usuario getUsuario() {
		return Usuario;
	}
	public void setUsuario(Usuario usuario) {
		Usuario = usuario;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getFechaPrestamo() {
		return fechaPrestamo;
	}
	public void setFechaPrestamo(Date fechaPrestamo) {
		this.fechaPrestamo = fechaPrestamo;
	}
	public Date getFechaLimite() {
		return fechaLimite;
	}
	public void setFechaLimite(Date fechaLimite) {
		this.fechaLimite = fechaLimite;
	}
	public boolean isEntragado() {
		return entragado;
	}
	public void setEntragado(boolean entragado) {
		this.entragado = entragado;
	}
	
	
}
