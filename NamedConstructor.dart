// Classe base Pessoa
class Pessoa {
  String nome;  // Nome da pessoa
  String email; // Email da pessoa

  // Construtor da classe Pessoa
  Pessoa(this.nome, this.email);
}

// Classe Aluno que herda de Pessoa
class Aluno extends Pessoa {
  int ra = 0; // RA do aluno, inicializado com 0

  // Construtor principal da classe Aluno
  Aluno(this.ra, String nome, String email) : super(nome, email);

  // Construtor nomeado para matrícula, sem RA definido
  Aluno.matricular(String nome, String email) : super(nome, email) {
    ra = 0; // Define um valor padrão para RA
    print("Bem vindo(a), $nome."); // Mensagem de boas-vindas
  }
}

// Classe Professor que herda de Pessoa
class Professor extends Pessoa {
  int matricula = 0; // Matrícula do professor, inicializada com 0

  // Construtor principal da classe Professor
  Professor(this.matricula, String nome, String email) : super(nome, email);

  // Construtor nomeado para contratação, sem matrícula definida
  Professor.contratar(String nome, String email) : super(nome, email) {
    matricula = 0; // Define um valor padrão para matrícula
    print("Bem vindo(a), $nome."); // Mensagem de boas-vindas
  }
}

// Função principal do programa
void main() {
  // Criando um aluno com RA definido
  Aluno a1 = Aluno(123, "Aluno 1", "Aluno1@email.com");

  // Criando um professor com matrícula definida
  Professor p1 = Professor(321, "Professor 1", "Professor@email.com");

  // Criando um aluno sem RA definido (usando o construtor nomeado)
  Aluno a2 = Aluno.matricular('Aluno Matriculado', 'alunoMatriculado@email.com');

  // Criando um professor sem matrícula definida (usando o construtor nomeado)
  Professor p2 = Professor.contratar('Professor contratado', 'professorContratado@email.com');
}
