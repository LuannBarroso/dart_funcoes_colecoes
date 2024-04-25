import 'dart:io';

void main() {
  // Mapa é uma representação de Chave: Valor
  final paciente = <String, String>{
    'nome': 'Luan Barroso',
    'curso': 'Academia Fluter',
  };

  //O mapa pode ser nulo mas se foir criado deve conter a chave
  // e o valor não nulos.
  Map<String, String>? pacienteNullSafety = null;

  // O mapa e o valor não podem ser nulos mas a chave pode ser nulo.
  var pacienteNullSafety2 = <String?, String>{
    null: 'Luan',
  };

  // O mapa e a chave não podem ser nulos mas o valor pode ser nulo.
  var pacienteNullSafety3 = <String, String?>{
    'nome': 'null',
  };

  var produtos = <String, String>{};
  //Só será adcionando se a chave não existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);

  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  //Recuperando o valor;
  print('Produto ${produtos['nome']}');
  print('Preco ${produtos['preco']}');

  // Utilizando forEach não pode ser utilizando quando for utilizar alguma requisição assyncrona!!!!!
  print('Utilizando forEach');
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  // Pode utilizar o for in caso tenha algum processo assyncrono dentro dele.
  print('Utilizando for in');
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }
  print('Utilizando for in para listar somente as chaves');
  for (var key in produtos.keys) {
    print('Chave: $key');
  }
  print('Utilizando for in para listar somente as keys');
  for (var value in produtos.values) {
    print('Valores: $value');
  }
}
