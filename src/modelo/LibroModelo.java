package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LibroModelo extends Conector{

	public ArrayList<Libro> selectAll(){
		// Creamos el arraylist de tipo libro en donde guardaremos los libros
		ArrayList<Libro> arraia = new ArrayList<Libro>();
		PreparedStatement pst;
		try {
			//Creamos el statement para hacer la consulta
			//Statement st = conexion.createStatement();
			pst = super.conexion.prepareStatement("select * from libros" );
			//Creamos el resultset donde guardaremos el resultado de la consulta y especificamo la consulta
			ResultSet rs = pst.executeQuery();
			
			// Mientras que el resultado de la consulta tenga mas informacion la iremoos guardando en un nuevo libro y le iremos
			// poniendo cada parametro para luego añadirlo al arraylist
			while (rs.next()){
				Libro nuevo = new Libro();
				nuevo.setId(rs.getInt("id"));
				nuevo.setAutor(rs.getString("autor"));
				nuevo.setTitulo(rs.getString("titulo"));
				nuevo.setPortada("portada");
				arraia.add(nuevo);
			}
			// Devolvemos el arraylist rellenado con la informacion de la consulta
			return arraia;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//devolvemos un null en caso de que de error
		return null;	
	}
	
	public Libro select(int id){
		//creamos un objeto de tipo libro para devolverlo al final
		Libro libro = new Libro();
		
		try {
//			Statement st = conexion.createStatement();
//			ResultSet rs = st.executeQuery("select * from libros where id=" +id);
			
			PreparedStatement pst = super.conexion.prepareStatement("select * from libros where id=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()){
			libro.setId(rs.getInt("id"));
			libro.setTitulo(rs.getString("titulo"));
			libro.setAutor(rs.getString("autor"));
			libro.setPortada(rs.getString("portada"));
			return libro;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public Libro selectPorTitulo(String titulo){
		
		Libro libro = new Libro();
		
		try {
			Statement st = conexion.createStatement();
			String sql = "select * from libros where titulo='" +titulo+"'";
			ResultSet rs = st.executeQuery(sql);
			
			if (rs.next()){
			libro.setId(rs.getInt("id"));
			libro.setTitulo(rs.getString("titulo"));
			libro.setAutor(rs.getString("autor"));
			libro.setPortada(rs.getString("portada"));
			return libro;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void update(Libro libro){
		
		PreparedStatement pst;
		try {
			pst = conexion.prepareStatement("update libros set titulo=?,autor=? where id=?");
		
		pst.setString(1, libro.getTitulo());
		pst.setString(2, libro.getAutor());
		pst.setInt(3, libro.getId());
		
		pst.execute();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int id){
		
		try {
			Statement st = this.conexion.createStatement();
			st.execute("delete from libros where id="+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insert(Libro libro){
		
		try {
			PreparedStatement pst = conexion.prepareStatement("insert into libros(titulo,autor,portada) values (?,?,?)");
			pst.setString(1, libro.getTitulo());
			pst.setString(2, libro.getAutor());
			pst.setString(3, libro.getPortada());
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
