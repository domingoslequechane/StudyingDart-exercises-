void main() {
  List<String> nomes = ["Domingos Lequechane", "Pedro Delfino", "Vasco Arruda"];
  print(nomes);
  nomes.add("Eduardo Lequechane");
  print(nomes);
  nomes.remove("Pedro Delfino");
  print(nomes);
  nomes.removeAt(1);
  print(nomes);
  print(nomes.first);
  print(nomes.last);
  print(nomes.length);
}
