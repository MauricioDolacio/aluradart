//Aula de Funções e Escopo

import 'package:aluradart/aluradart.dart' as aluradart;

void main() {
  String nome = "Uva";
  String cor = 'Roxo';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);
  mostraMadura(nome: 'Uva', dias: 40, cor: cor);
}

// Posicionais Obrigatórios
// Nomeados Opcionais
// Parâmetros com "Padrão"
// Modificador "required"
mostraMadura({String? nome, required int dias, String cor = 'Sem cor'}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  print('A $nome é $cor');
}

//Função
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
