package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Entity.Usuario;

public class UsuarioDAO {

	private Connection connection;

	public UsuarioDAO() {

	}

	public void CadastrarUsuario(Usuario usuario) throws SQLException {
		String sql = "insert into tbUsuario (codigoUsuario, nomeUsuario, loginUsuario"
		        + "senhaUsuario, telefoneUsuario, emailUsuario) values (?,?,?,?,?,?)";
		PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		stmt.setInt(1, usuario.getCodigo());
		stmt.setString(2, usuario.getNome());
		stmt.setString(3, usuario.getlogin());
		stmt.setString(4, usuario.getSenha());
		stmt.setString(5, usuario.getTelefone());
		stmt.setString(6, usuario.getEmail());
		
		stmt.executeUpdate();
		ResultSet rst = stmt.getGeneratedKeys();
		if (rst.next()) {
			usuario.setCodigo(rst.getInt(1));
		}
	}

	public List<Usuario> getUsuarios() throws SQLException {
		List<Usuario> lista = new ArrayList<Usuario>();
		String sql = "select codigoUsuario, nomeUsuario, loginUsuario senhaUsuario, telefoneUsuario, emailUsuario FROM tbUsuario";
		PreparedStatement stmt = connection.prepareStatement(sql);
		ResultSet rst = stmt.executeQuery();
		while (rst.next()) {
			Usuario usuario = new Usuario();
			usuario.setCodigo(rst.getInt(1));
			usuario.setNome(rst.getString(2));
			usuario.setLogin(rst.getString(3));
			usuario.setSenha(rst.getString(4));
			usuario.setTelefone(rst.getString(5));
			usuario.setEmail(rst.getString(6));
			lista.add(usuario);
		}
		return lista;
	}

	public void RemoveUsuario(Usuario usuario) throws SQLException {
		String sql = "delete from tbUsuario WHERE ID = ?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, usuario.getCodigo());
		stmt.executeUpdate();

	}

	public void AlterarUsuario(Usuario usuario) throws SQLException {
		String sql = "update tbUsuario set codigoUsuario = ?, nomeUsuario = ?, loginUsuario = ?, senhaUsuario = ?"
				+ ", telefoneUsuario = ?, emailUsuario = ? where codigoUsuario = ?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, usuario.getCodigo());
		stmt.setString(2, usuario.getNome());
		stmt.setString(3, usuario.getlogin());
		stmt.setString(3, usuario.getSenha());
		stmt.setString(3, usuario.getTelefone());
		stmt.setString(3, usuario.getEmail());
		stmt.executeUpdate();
	}

	public Usuario pesquisaUsuario(Usuario usuario) throws SQLException {
		String sql = "select codigoUsuario, nomeUsuario, loginUsuario senhaUsuario, telefoneUsuario, emailUsuario FROM tbUsuario"
				+ " where codigoUsuario = ?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, usuario.getCodigo());
		ResultSet rst = stmt.executeQuery();
		Usuario rtnUsuario = new Usuario();
		if (rst.next()) {
			rtnUsuario.setCodigo(rst.getInt(1));
			rtnUsuario.setNome(rst.getString(2));
			rtnUsuario.setLogin(rst.getString(3));
			rtnUsuario.setSenha(rst.getString(4));
			rtnUsuario.setTelefone(rst.getString(5));
			rtnUsuario.setEmail(rst.getString(6));

		}
		return rtnUsuario;
	}
}
