package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UsuarioModelo extends Conector {

	public ArrayList<Usuario> selectAll(){
		//crear arrayList
		ArrayList<Usuario> arraia = new ArrayList();
		
		//ejecutar consulta
		try {
			Statement st = conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from usuarios");
		
		
		
		//recorrer el resultset y rellenar el arraylist
		
		while (rs.next()) {
			Usuario nuevo = new Usuario();
			  nuevo.setId(rs.getInt("id")); 
			  nuevo.setNombre(rs.getString("nombre"));
			  nuevo.setApellido(rs.getString("apellido"));
			  nuevo.setEdad(rs.getInt("edad"));
			  nuevo.setDni(rs.getString("dni"));
			  nuevo.setFechaNacimiento(rs.getDate("fechaNacimiento"));
			  arraia.add(nuevo);
		}
		return arraia;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		//devolver el arraylist
		return null;
	}
	
	public Usuario select(int id){
		Usuario era = new Usuario();
		
		try {
			Statement st = conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from usuarios where id=" +id);
			
			if(rs.next()){
			era.setId(rs.getInt("id")); 
			  era.setNombre(rs.getString("nombre"));
			  era.setApellido(rs.getString("apellido"));
			  era.setEdad(rs.getInt("edad"));
			  era.setDni(rs.getString("dni"));
			  era.setFechaNacimiento(rs.getDate("fechaNacimiento"));
			  return era;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void delete (int id){
		
		try {
			Statement st = this.conexion.createStatement();
			st.execute("delete from usuarios where id="+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(Usuario usuario){
		
		
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("UPDATE usuarios SET nombre=?,apellido=?,edad=?,dni=?,fechaNacimiento=? WHERE id=?" );

		pst.setString(1, usuario.getNombre());
		pst.setString(2, usuario.getApellido());
		pst.setInt(3, usuario.getEdad());
		pst.setInt(4, usuario.getId());
		pst.setString(5, usuario.getDni());
		java.sql.Date sqlDate =new java.sql.Date(usuario.getFechaNacimiento().getTime());
		pst.setDate(6, sqlDate);
		
		pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insert(Usuario usuario){
	
		PreparedStatement pst;
		try {
		pst = super.conexion.prepareStatement("INSERT INTO usuarios (nombre, apellido, edad) values(?,?,?)");
		pst.setString(1, usuario.getNombre());
		pst.setString(2, usuario.getApellido());
		pst.setInt(3, usuario.getEdad());
		pst.setString(5, usuario.getDni());
		java.sql.Date sqlDate =new java.sql.Date(usuario.getFechaNacimiento().getTime());
		pst.setDate(6, sqlDate);
		pst.execute();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Usuario selectPorDni(String dni) {
		Usuario era = new Usuario();
		
			try {
				PreparedStatement pst = super.conexion.prepareStatement("select * from usuarios where dni=?");
				pst.setString(1, dni);
				ResultSet rs = pst.executeQuery();
			
				if(rs.next()){
				era.setId(rs.getInt("id")); 
				era.setNombre(rs.getString("nombre"));
				era.setApellido(rs.getString("apellido"));
				era.setEdad(rs.getInt("edad"));
				era.setDni(rs.getString("dni"));
				era.setFechaNacimiento(rs.getDate("fechaNacimiento"));
			  return era;
				}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
