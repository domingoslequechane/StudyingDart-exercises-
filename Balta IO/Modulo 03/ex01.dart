import 'dart:io';

void main() {
  print("Digite a sua idade");
  var input = stdin.readLineSync();
  int idade = int.parse(input!);

  if (idade >= 18) {
    print("maior de idade");
  } else {
    print("Menor de idade");
  }
}
