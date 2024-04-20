void main() {
  var numero = List.generate(10, (index) => index);

  print(numero);
  numero.forEach(print);
//Expand
  var lista = [
    [1, 2],
    [3, 4],
  ];
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);
}
