void main() {
  // Testando a função ePar() para verificar se um número é par
  print(ePar(28)); // Deve imprimir "true"

  // Testando a função ePar2() (versão simplificada)
  print(ePar2(2316201)); // Deve imprimir "false"

  // Testando a função calculaArea() para calcular a área de um retângulo
  print(calculaArea(3, 9)); // Deve imprimir "27"

  // Testando a função imprimeNome() para exibir um nome
  imprimeNome("Josefina"); // Deve imprimir "Olá Josefina"
}

// Função que verifica se um número é par
bool ePar(int numero) {
  // Versão tradicional com if (comentada)
  // if (numero % 2 == 0) {
  //   return true;
  // }
  // return false;

  // Versão simplificada usando operador ternário
  return (numero % 2 == 0) ? true : false;
}

// Função que verifica se um número é par (forma ainda mais curta)
bool ePar2(int numero) => (numero % 2 == 0);

// Função que calcula a área de um retângulo
int calculaArea(int base, int altura) => base * altura;

// Função que imprime um nome com uma saudação
void imprimeNome(String nome) => print("Olá $nome");
