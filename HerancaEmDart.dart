class Pessoa{
  String nome;
  String email;
  
  Pessoa(this.nome, this.email);
}

class Aluno extends Pessoa{
  int ra;
  
  Aluno(int this.ra, String nome, String email) : super(nome, email);
}

class Professor extends Pessoa{
  int matricula;
  
  Professor(int this.matricula, String nome, String email) : super(nome, email);
}

void main() {
  Aluno a1 = new Aluno(123, "Aluno 1", "Aluno1@email.com");
  Professor p1 = new Professor(321, "Professor 1", "Professor@email.com");
}
