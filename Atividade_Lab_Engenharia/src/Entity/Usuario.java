package Entity;

import java.io.Serializable;

public class Usuario implements Serializable {
    private Integer codigo;
    private String nome;
    private String usuario;
    private String senha;
    private Integer telefone;
    private String email;

    public Usuario() {
        this(null, null, null, null, null, null);
    }

    public Usuario(Integer codigo, String nome, String usuario, String senha, 
            Integer telefone, String email) {
                this.codigo = codigo;
                this.nome = nome;
                this.usuario = usuario;
                this.senha = senha;
                this.telefone = telefone;
                this.email = email;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Integer getTelefone() {
        return telefone;
    }

    public void setTelefone(Integer telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}