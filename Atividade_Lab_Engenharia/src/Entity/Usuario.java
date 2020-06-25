package Entity;

import java.io.Serializable;

public class Usuario implements Serializable {
    private Integer codigo;
    private String nome;
    private String login;
    private String senha;
    private String telefone;
    private String email;

    public Usuario() {
        this(null, null, null, null, null, null);
    }

    public Usuario(Integer codigo, String nome, String login, String senha, 
            String telefone, String email) {
                this.codigo = codigo;
                this.nome = nome;
                this.login = login;
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

    public String getlogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}