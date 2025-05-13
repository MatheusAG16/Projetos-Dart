class Aluno{
  int ra = 0;
  String nome = "";
  
  Aluno(this.ra, this.nome);
}

void main(){
  
  List<String> compras = ["Cenoura", "Banana", "Brocolis", "Refrigerante"];
  
  //Mostra o primeiro item
  print(compras[0]);
  
  //Adiciona um item ao final da lista
  compras.add("Suco");
  
  //Mostra a lista completa
  print(compras);
  
  //Mostra o tamanho da lista
  print(compras.length);
  
  //Verifica se há um determinado item na lista
  print(compras.contains('Batata'));
  print("------------------------------");
  
  //Criando a lista do tipo Aluno
  List<Aluno> alunos = [];
  
  //Adicionando objetos da classe Aluno à lista
  alunos.add(Aluno(123, "Josefina"));
  alunos.add(Aluno(321, "Josefino"));
  alunos.add(Aluno(443, "Roberto"));
  
  //Repetição do tipo ForEach
  for(Aluno a in alunos){
    print("Nome: ${a.nome}");
    print("RA: ${a.ra}");
    print("------------------------------");
  }
  
}