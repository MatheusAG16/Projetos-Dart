// Classe que representa os dados de um veículo
class DadosVeiculo {
  String fabricante; // Nome do fabricante do veículo
  String modelo;     // Modelo do veículo
  int ano;          // Ano de fabricação

  // Construtor da classe DadosVeiculo
  DadosVeiculo(this.fabricante, this.modelo, this.ano);
}

void main() {
  // Criando um Map para armazenar objetos e suas quantidades
  Map<String, int> objetos = Map();
  objetos["Celular"] = 2;
  objetos["Canetas"] = 20;
  objetos["Cadeiras"] = 4;

  // Imprimindo o Map de objetos
  print(objetos);

  // Criando um Map para armazenar informações de um funcionário
  Map<String, dynamic> func = Map();
  func["nome"] = "Josefina";          // Nome do funcionário
  func["salario"] = 20000.50;         // Salário do funcionário
  func["dependentes"] = 1;            // Número de dependentes
  func["emHomeOffice"] = true;        // Se está em home office ou não

  // Imprimindo apenas a informação sobre home office
  print(func["emHomeOffice"]);

  // Criando um Map para armazenar veículos com suas placas como chave
  Map<String, DadosVeiculo> carros = Map();

  // Adicionando veículos ao Map
  carros["ABC-1234"] = DadosVeiculo("Ferrari", "F-250", 2021);
  carros["ABC-4321"] = DadosVeiculo("Bugatti", "Veyron", 2022);

  // Percorrendo o Map e imprimindo os dados de cada veículo
  carros.forEach((placa, veiculo) => 
    print("Placa: ${placa}: ${veiculo.fabricante}, ${veiculo.modelo} (${veiculo.ano})")
  );
}
