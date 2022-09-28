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

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  banana1.printAlimento();
  mandioca1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  limao1.existeRefri(true);
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

//Classe pai (Objeto)
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a} $nome pesa $peso gramas e é $cor');
  }
}

//Classe filha de Alimento (Objeto/Herança)
class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  //Construtor (Parâmetros da classe)
  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  //Métodos (funções da classe)
  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela esta madura? $isMadura');
  }
}

//Classe filha de Alimento (Objeto/Herança)
class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('O $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar!');
    }
  }
}

//Classe Alimento > Fruta > Citricas
class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor,
            diasDesdeColheita); //isMadura não é opcional na herança pai

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refri de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}
