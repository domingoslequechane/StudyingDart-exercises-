import 'dart:io';

bool errorOption = false;

void main() {
  bool buy = true;
  bool done = true;
  List<String> products = [];

  MenuOperation();

  // Operation
  while (buy) {
    var input = stdin.readLineSync();

    switch (input) {

      // Mostrar
      case "show":
        ShowProducts(products);
        if (products.length == 0) {
          print(
              "Pretende adicionar algum produto?\n* yes - para adicionar\nQualquer tecla para não adicionar\n");
          input = stdin.readLineSync();
          switch (input) {
            case "yes":
              AddProduct(input, products, done);
              break;
            default:
              print("Ok!\n");
          }
          if (input == "yes") {
            AddProduct(input, products, done);
          }
        } else {
          print(
              "Pretende adicionar mais algum produto?\n* Yes - para adicionar\nQualquer tecla para não adicionar\n");
          input = stdin.readLineSync();
          switch (input) {
            case "yes":
              AddProduct(input, products, done);
              break;
            default:
              print("Ok!\n");
              MenuOperation();
          }
        }
        break;

      // Adicionar
      case "add":
        done = true;
        while (done) {
          AddProduct(input, products, done);
          done = false;
        }
        break;

      // Remover
      case "remove":
        RemoveProduct(input, products, done);
        break;

      // Cancelar
      case "clear":
        LimparCarinha(products, input, buy);
        break;

      // Terminar
      case "finish":
        FinishBuy(products);
        buy = false;
        break;

      // Default
      default:
        errorOption = true;
        MenuOperation();
    }
  }
}

ShowProducts(products) {
  ClearTerminal();
  print("\n=========== Minha carrinha ===========");
  print("${products.length} produtos");
  print("$products\n");
}

AddProduct(input, products, done) {
  ClearTerminal();
  print("\n=========== Adicionar produto ===========");
  print("A cada produto adicionado um Enter\nPara terminar 'done'\n");
  while (done) {
    input = stdin.readLineSync();
    if (input != "done") {
      products.add(input!);
      print("Produto adicionado\n");
    } else {
      done = false;
      print("Ok!\n");
      MenuOperation();
    }
  }
}

RemoveProduct(input, products, done) {
  ClearTerminal();
  print("\n=========== Remover produto ===========");
  print("A cada produto a remover um Enter\nPara terminar 'done'\n");
  print("${products.length} produtos");
  print("$products\n");
  while (done) {
    input = stdin.readLineSync();
    if (input != "done") {
      products.remove(input!);
      print("Produto removido\n");
    } else {
      done = false;
      print("Ok!\n");
      ClearTerminal();
      MenuOperation();
    }
  }
}

MenuOperation() {
  if (errorOption == true) {
    ClearTerminal();
    errorOption = false;
    print("Operação inválida\n");
  }
  print("=========== AJÚDA ===========");
  print(
      "\n--- Comando | Operação---\n* finish        Finalisar compra\n* clear          Cancelar compra");
  print(
      "* show          Mostrar carrinha\n* add           Adicionar produto\n* remove        Remover produto\n");
}

ClearTerminal() {
  print("\x1B[2J\x1B[0;0H");
}

FinishBuy(products) {
  if (products.length > 0) {
    ShowProducts(products);
    print("Compra efectuada com sucesso!\nOs seu produto esta a caminho!");
  } else {
    print("Nenhuma compra efectuada.\nVolte sempre!");
  }
}

LimparCarinha(products, input, buy) {
  print(
      "${products.length} produtos adicionados a carrinha.\nDeseja realmente cancelar as compras?");
  print("yes - para confirmar\nQualquer tecla para continuar");
  input = stdin.readLineSync();
  if (input == "yes") {
    for (int i = products.length; i > 0; i--) {
      products.removeAt(i);
    }
    print(
        "Produtos removidos com sucesso.\n${products.length} produtos na carinha!\n");
    print("\ncontinue - para continuar\nQualquer tecla para sair");
    input = stdin.readLineSync();
    if (input == "continue") {
      MenuOperation();
      var input = stdin.readLineSync();
    } else {
      buy = false;
    }
  }
}
