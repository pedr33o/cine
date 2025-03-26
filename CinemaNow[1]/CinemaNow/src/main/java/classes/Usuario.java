package classes;


public class Usuario {
    private String nome;
    private String idade;
    private String email;

    public Usuario() {
        // Construtor vazio
    }

    public Usuario(String nome, String idade, String email) {
        this.nome = nome;
        this.idade = idade;
        this.email = email;

    }

    // Métodos Getters e Setters para cada atributo

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



	/**
	 * @return the idade
	 */
	public String getIdade() {
		return idade;
	}

	/**
	 * @param idade the idade to set
	 */
	public void setIdade(String idade) {
		this.idade = idade;
	}


	public String toString() {
	    return "Nome: " + nome +
	           ", E-mail: " + email +
	           ", Idade: " + idade;
	}
}
