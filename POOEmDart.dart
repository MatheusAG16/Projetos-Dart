class Pessoa {
  // Atributos da classe
  String nome; // Nome da pessoa
  String _email; // Email privado (usando _ para indicar que é privado)
  int _idade; // Idade privada (também com _)

  // Construtor da classe Pessoa
  Pessoa(this.nome, this._email, this._idade);

  // Getter para acessar a idade (porque _idade é privada)
  int get idade => _idade;

  // Getter para acessar o email (porque _email é privado)
  String get email => _email;

  // Setter para modificar a idade com validação
  set idade(int idade) {
    if (idade > 0 && idade < 150) { // Garante que a idade seja válida
      _idade = idade;
    }
  }

  // Setter para modificar o email (sem validação, mas poderia ter)
  set email(String email) {
    _email = email;
  }

  // Método que simula a pessoa andando
  void andar() {
    print("Estou andando");
  }

  // Método que simula um aniversário (incrementa a idade)
  void fazerAniversario() {
    _idade++; // Aumenta a idade em 1
    print("Feliz Aniversário, agora você tem ${_idade} anos!");
  }

  // Método que simula a pessoa comendo algo
  void comer(String comida) {
    print("Adoro $comida");
  }
}

void main() {
  // Criando um objeto da classe Pessoa
  Pessoa p1 = Pessoa(
    "Matheus",
    "matheus@matheus.com",
    26
  );

  // Modificando a idade usando o setter (com validação)
  p1.idade = 149; // Como está dentro do limite, a idade será alterada

  // Exibindo os dados da pessoa
  print("Nome: ${p1.nome}, Email: ${p1.email}, Idade: ${p1.idade}");

  // Chamando os métodos da classe
  p1.fazerAniversario(); // Aumenta a idade e imprime mensagem
  p1.andar(); // Simula a pessoa andando
  p1.comer('Batata frita'); // Simula a pessoa comendo
}
