//Aula de Funções e Escopo

import 'package:aluradart/aluradart.dart' as aluradart;

void main() {
  String nome = "Uva";
  double peso = 100.2;
  String cor = 'Roxo';
  String sabor = 'Doce';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  //Objetos
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta('Laranja', 40, 'Laranja', 'Citrica', 20);
}

//Função
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

//Parâmetros diferentes
mostraMadura({String? nome, required int dias, String cor = 'Sem cor'}) {
  // Posicionais Obrigatórios
// Nomeados Opcionais
// Parâmetros com "Padrão"
// Modificador "required"
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  print('A $nome é $cor');
}

//Classe (Objeto)
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  //Construtor (Parâmetros da classe)
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  //Métodos (funções da classe)
  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela esta madura? $isMadura');
  }
}
