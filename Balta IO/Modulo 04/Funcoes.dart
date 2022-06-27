void main() {
  Media();
}

// Fução sem parámetro
Media() {
  double teste01 = 16;
  double teste02 = 12;

  double media = CalculoMedia(teste01, teste02);

  print(media);

  Resultado(media);
}

double CalculoMedia (double teste01, double teste02){
  return (teste01 + teste02) / 2;
}

// Função com parámetro
Resultado(media) {
  if (media >= 10) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}
