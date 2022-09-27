import 'package:aluradart/aluradart.dart' as aluradart;

void main() {
  // Aula 1: Variaveis

  // int idade = 26;
  // double altura = 780e6;
  // bool geek = true;
  // String nome = 'Maurício';
  // print('Bom dia, eu sou $nome');

  //Aula 2: Listas

  String nome = 'Ricardo';
  List<String> listanomes = ['Ricardo', 'Natalia', 'Rafael', 'Luiz Otavio', 'Nicolas'];
  List<dynamic> mauricio = [19,1.86,true,'Mauricio Dolacio','Mauricio'];

  print(listanomes[0]);
  print(listanomes.length);
  print(listanomes.reversed);
  print('Eu sou ${mauricio[4]} \n'
  'eu tenho ${mauricio[0]} anos\n'
  'e tenho ${mauricio[1]}m de altura');

  var varIndefinida = 1; //dart irá selecionar qual será o tipo dessa variavel. Pesa mais o codigo
  const int varConst = 20; //o valor desta variavel não pode ser mudado
  final String varFinal; //essa variavel só pode ser alterada uma vez.
  varFinal = 'final'; //tentar fazer mais alterações irá causar um erro.

  //Aula 3: 5 métodos de lista
  List<String> list = ["Ricarth", "Ruan", "da", "Silva", "Lima"];

  //sublist faz uma sublista da lista original
  List<String> sublist = list.sublist(1, 3);
  print(sublist);

  //forEach: percorre a lista inteira como um for
  list.forEach((element) {
    print(element);
  });
  print('Fim da lista!');

  //contains: verifica se a lista possui algum conteudo especificado
  String procurando = "Silva";
  if (list.contains(procurando)) {
    print('Encontrado');
  }

  //reduce: reduz a lista a um objeto
  String myName = list.reduce((value, element) {
    return value + " " + element;
  });
  print(myName);

  //where
  Iterable maior = list.where((element) => element.length > 4);
  print(maior);
}
