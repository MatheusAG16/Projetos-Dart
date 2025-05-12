class Pessoa {
  String nome;
  String email;

  Pessoa(this.nome, this.email);
}

class Aluno extends Pessoa {
  int ra = 0;

  Aluno(this.ra, String nome, String email) : super(nome, email);
  
  Aluno.matricular(String nome, String email) : super(nome, email) {
    ra = 0; // Definindo um valor padrão
    print("Bem vindo(a), $nome.");
  }
}

class Professor extends Pessoa {
  int matricula = 0;

  Professor(this.matricula, String nome, String email) : super(nome, email);
  
  Professor.contratar(String nome, String email) : super(nome, email) {
    matricula = 0; // Definindo um valor padrão
    print("Bem vindo(a), $nome.");
  }
}

void main() {
  Aluno a1 = Aluno(123, "Aluno 1", "Aluno1@email.com");
  Professor p1 = Professor(321, "Professor 1", "Professor@email.com");

  Aluno a2 = Aluno.matricular('Aluno Matriculado', 'alunoMatriculado@email.com');
  Professor p2 = Professor.contratar('Professor contratado', 'professorContratado@email.com');
}
