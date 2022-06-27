import 'dart:io';

void main() {
  String Pass = "1234";
  String email = "lequechane@gmail.com";
  print("\nDigite o seu email:");
  var inEmail = stdin.readLineSync();
  print("\nDigite a sua senha:");
  var inPass = stdin.readLineSync();

  int n = 3;

  do {
    while (inPass != Pass || inEmail != email) {
      print("\nTens mais $n tentativas!");
      print("\nUsuário ou senha incorrecta");
      print("Digite o seu email:");
      inEmail = stdin.readLineSync();
      print("\nDigite a sua senha:");
      inPass = stdin.readLineSync();


      print(n);
      n--;
    }
    if (inPass != Pass || inEmail != email) {
      print("Conta bloqueada");
    }
    if(inPass == Pass || inEmail == email){
      print("\nLogin efectuado com sucesso");
    }
  } while (n != 0);
}
