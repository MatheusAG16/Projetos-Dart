// Classe base Pessoa
class Pessoa {
  String nome;  // Nome da pessoa
  String email; // Email da pessoa

  // Construtor da classe Pessoa
  Pessoa(this.nome, this.email);
}

// Classe Aluno que herda de Pessoa
class Aluno extends Pessoa {
  int ra; // RA do aluno

  // Construtor da classe Aluno
  Aluno(this.ra, String nome, String email) : super(nome, email);
}

// Classe Professor que herda de Pessoa
class Professor extends Pessoa {
  int matricula; // Matrícula do professor

  // Construtor da classe Professor
  Professor(this.matricula, String nome, String email) : super(nome, email);
}

// Função principal do programa
void main() {
  // Criando um aluno com RA definido
  Aluno a1 = Aluno(123, "Aluno 1", "Aluno1@email.com");

  // Criando um professor com matrícula definida
  Professor p1 = Professor(321, "Professor 1", "Professor@email.com");
}
