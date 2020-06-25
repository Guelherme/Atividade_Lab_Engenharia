package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UsuarioDAO;
import Entity.Usuario;

@WebServlet("/cadastrarUsuario")
public class CadastrarUsuario extends HttpServlet {
	
	
	public void doPost (HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		Usuario user = new Usuario();
		
		String nome = req.getParameter("nome");
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		String telefone = req.getParameter("telefone");
		String email = req.getParameter("email");
		String cmd = req.getParameter("cmd");
		
		
		
		String msg = null;
		if ("adicionar".equals(cmd)) {
			user.setNome(nome);
			user.setLogin(login);
			user.setSenha(senha);
			user.setTelefone(telefone);
			user.setEmail(email);
			
			UsuarioDAO usuariodao = new UsuarioDAO();
			try {
				usuariodao.CadastrarUsuario(user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			msg = String.format("O Usuario ",nome," foi cadastrado com sucesso");
		} else {
			msg = String.format("O Usuario ",nome," não cadastrado com sucesso");
		}
		res.sendRedirect("./escolhaJogojsp");

	}
}
