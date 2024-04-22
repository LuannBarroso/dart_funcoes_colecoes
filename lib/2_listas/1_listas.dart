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

  // every
  print('.every');
  final listaBusca2 = ['Rodrigo', 'João', 'José'];

  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }
}
