import 'dart:io';

void main() {
  getIdade();
}

getIdade() {
  print("Digite o seu ano de nascimento");
  var input = stdin.readLineSync();
  int anoNascimento = int.parse(input!);
  print("Gigite o ultimo ano!");
  input = stdin.readLineSync();
  int anoLimite = int.parse(input!);

  int resp = outIdade(anoNascimento, anoLimite);
  print(resp);
  Resultado(resp);
}

calIdade() {}

int outIdade(int anoNascimento, int anoLimite) {
  return anoLimite - anoNascimento;
}

Resultado(resp) {
  if (resp >= 18) {
    print("Maior de idade");
  } else {
    print("Menos de idade");
  }
}
