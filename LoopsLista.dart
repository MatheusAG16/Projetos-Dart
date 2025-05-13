// Classe Fruta que representa uma fruta com nome e estado de maturação
class Fruta {
  String? nome;   // Nome da fruta (pode ser nulo)
  bool? madura;   // Indica se a fruta está madura (pode ser nulo)

  // Construtor da classe Fruta
  Fruta(this.nome, this.madura);
}

void main() {
  // Criando uma lista de frutas
  List<Fruta> frutas = [];

  // Adicionando frutas à lista
  frutas.add(Fruta("Banana", true));
  frutas.add(Fruta("Mamão", true));
  frutas.add(Fruta("Abacate", true));
  frutas.add(Fruta("Maçã", true));
  frutas.add(Fruta("Laranja", false));

  // Percorrendo a lista com um loop "for-in"
  for (Fruta f in frutas) {
    // Verifica se a fruta está madura e imprime a mensagem correspondente
    print(
      f.madura == true ? 'Já pode comer ${f.nome}' : 'Não pode comer ${f.nome}',
    );
  }

  // Imprime uma linha separadora
  print('-' * 20);

  // Percorrendo a lista com um loop "for" tradicional
  for (int i = 0; i < frutas.length; i++) {
    print(
      frutas[i].madura == true
          ? 'Já pode comer ${frutas[i].nome}'
          : 'Não pode comer ${frutas[i].nome}',
    );
  }

  // Imprime uma linha separadora
  print('-' * 20);

  // Percorrendo a lista com um loop "while"
  int j = 0;
  while (j < frutas.length) {
    print(
      frutas[j].madura == true
          ? 'Já pode comer ${frutas[j].nome}'
          : 'Não pode comer ${frutas[j].nome}',
    );
    j++; // Incrementa o índice para continuar o loop
  }

  // Imprime uma linha separadora
  print('-' * 20);

  // Percorrendo a lista com um loop "do-while" (de trás pra frente)
  int k = frutas.length - 1; // Começa pelo último elemento da lista

  do {
    print(
      frutas[k].madura == true
          ? 'Já pode comer ${frutas[k].nome}'
          : 'Não pode comer ${frutas[k].nome}',
    );
    k--; // Decrementa o índice para percorrer a lista ao contrário
  } while (k >= 0); // Continua enquanto k for maior ou igual a 0
}
