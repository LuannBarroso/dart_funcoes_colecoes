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

  //any

  print('.any');
  final listaBusca = ['Rodrigo', 'João', 'josé'];

  if (listaBusca.any((nome) => nome == 'João')) {
    print('Tem João');
  } else {
    print('Não tem João');
  }
}
