import 'dart:io';

void main() {
  String saldo = "1420.80";
  print("=======Selecione a sua operação======");
  print("1 - Saldo\n2 - Pagamentos\n3 - Transferencias\n4 - Pedidos\n5 - Sair\n");

  var input = stdin.readLineSync();
  int option = int.parse(input!);

  switch (option) {
    case 1:
      print("Saldo: ${saldo} mzn\nObrigado pela preferencia!");
      break;
    case 2:
      print("Pagamentos\nObrigado pela preferencia");
      break;
    case 3:
      print("Transferencias\nObrigado pela preferencia");
      break;
    case 4:
      print("Pedidos\nObrigado pela preferencia");
      break;
    case 5:
      print("Volte sempre!\nObrigado pela preferencia");
      break;
    default:
      print("Selecionou uma operação invalida\nObrigado pela preferencia");
  }
}
