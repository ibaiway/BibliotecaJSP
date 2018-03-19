package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PrestamoModelo extends Conector{

	public void insertar(Prestamo prestamo){
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_limite, entregado) values(?,?,?,?,?)");
		
		pst.setInt(1, prestamo.getLibro().getId());
		pst.setInt(2, prestamo.getUsuario().getId());
		pst.setDate(3, new java.sql.Date(prestamo.getFechaPrestamo().getTime()));
		pst.setDate(4, new java.sql.Date(prestamo.getFechaLimite().getTime()));
		pst.setBoolean(5, prestamo.isEntragado());
		pst.execute();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	public ArrayList<Prestamo> selectAll(){
		Statement st;
		Prestamo prestamo;
		ArrayList<Prestamo> prestamos = new ArrayList<Prestamo>();
		LibroModelo libroModelo = new LibroModelo();
		UsuarioModelo usuarioModelo = new UsuarioModelo();
		
		try {
			st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from prestamos");
			while(rs.next()){
				prestamo = new Prestamo();
				prestamo.setId(rs.getInt("id"));
				prestamo.setLibro(libroModelo.select(rs.getInt("id_libro")));
				prestamo.setUsuario(usuarioModelo.select(rs.getInt("id_usuario")));
				prestamo.setFechaPrestamo(rs.getDate("fecha_prestamo"));
				prestamo.setFechaLimite(rs.getDate("fecha_prestamo"));
				prestamo.setEntragado(rs.getBoolean("entregado"));
				
				prestamos.add(prestamo);
			}
			return prestamos;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}
	
	public Prestamo selectNoEntregado(Usuario usuario, Libro libro){
		Prestamo prestamo;
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM prestamos WHERE id_libro = ? AND id_usuario = ? AND entregado = ? ");
			
			pst.setInt(1, libro.getId());
			pst.setInt(2, usuario.getId());
			pst.setBoolean(3, false);
			
			ResultSet rs = pst.executeQuery();
			LibroModelo libroModelo = new LibroModelo();
			UsuarioModelo usuarioModelo = new UsuarioModelo();
			
			if(rs.next()){
				prestamo = new Prestamo();
				prestamo.setId(rs.getInt("id"));
				prestamo.setLibro(libroModelo.select(rs.getInt("id_libro")));
				prestamo.setUsuario(usuarioModelo.select(rs.getInt("id_usuario")));
				prestamo.setFechaPrestamo(rs.getDate("fecha_prestamo"));
				prestamo.setFechaLimite(rs.getDate("fecha_prestamo"));
				prestamo.setEntragado(rs.getBoolean("entregado"));
				
				return prestamo;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	public void update(Prestamo prestamo){
		PreparedStatement pst;
		
		try {
			pst = super.conexion.prepareStatement("UPDATE `prestamos` SET `id_libro`=?,`id_usuario`=?,`fecha_prestamo`=?,`fecha_limite`=?,`entregado`=? WHERE `id`=?");
			
			pst.setInt(1, prestamo.getLibro().getId());
			pst.setInt(2, prestamo.getUsuario().getId());
			pst.setDate(3, new java.sql.Date(prestamo.getFechaPrestamo().getTime()));
			pst.setDate(4, new java.sql.Date(prestamo.getFechaLimite().getTime()));
			pst.setBoolean(5, true);
			pst.setInt(6, prestamo.getId());
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
