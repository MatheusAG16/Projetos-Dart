class Pessoa {
  //Atributos
  String nome;
  String _email;
  int _idade;

  Pessoa(this.nome, this._email, this._idade);

  int get idade => _idade;
  String get email => _email;

  set idade(int idade) {
    if (idade > 0 && idade < 150) {
      _idade = idade;
    }
  }

  set email(String email) {
    _email = email;
  }

  //Métodos
  void andar() {
    print("Estou andando");
  }

  void fazerAniversario() {
    _idade++;
    print("Feliz Aniversário, agora você tem ${_idade} anos!");
  }

  void comer(String comida) {
    print("Adoro $comida");
  }
}

void main() {
  Pessoa p1 = new Pessoa(
    "Matheus",
    "matheus@matheus.com",
    26
  );
  
  p1.idade = 149;

  print("Nome: ${p1.nome}, Email: ${p1.email}, Idade: ${p1.idade}");

  p1.fazerAniversario();
  p1.andar();
  p1.comer('Batata frita');
}
