package DAO;


import Entity.Usuario;

public class cadastraUsuario {

    public boolean CadUsuario (Usuario u) {
        Connection con = null;

    try {
        String sql = "insert into tbUsuario (codigoUsuario, nomeUsuario, loginUsuario"
                + "senhaUsuario, telefoneUsuario, emailUsuario) values (?,?,?,?,?,?)";
        con = Conexao.getConectaMYSQL();

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, u.getCodigo());
        ps.setString(2, u.getNome());
        ps.setString(3, u.getUsuario());
        ps.setString(4, u.getSenha());
        ps.setInt(5, u.getTelefone());
        ps.setString(6, u.getEmail());

        ps.execute();

        return true;

    }catch (SQLException e){
        e.printStackTrace();
    }

    }
    return false;

}

}
