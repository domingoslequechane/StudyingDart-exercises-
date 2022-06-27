import 'dart:io';

void main() {
  getNotas();
}

getNotas() {
  print("Digite a sua primeira nora");
  var input = stdin.readLineSync();
  double nota1 = double.parse(input!);

  print("Digite a sua segunda nota");
  input = stdin.readLineSync();
  double nota2 = double.parse(input!);

  double med = Operacao(nota1, nota2);
  print(med);
  resultado(med);
}

resultado(media) {
  if (media >= 10) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}

double Operacao(double nota3, double nota4) {
  return (nota3 + nota4) / 2;
}
