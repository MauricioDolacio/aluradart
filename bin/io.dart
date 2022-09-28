import 'dart:io';

void main() {
  print('Digite sua idade:');

  String? idade = stdin.readLineSync(); //input

  if (idade != null) {
    print('Sua idade $idade');
  }
}
