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

  // sort

  print('.sort');
  var listaParaOrdernacao = [99, 22, 33, 55, 54, 477, 132132];

  listaParaOrdernacao.sort();
  print(listaParaOrdernacao);

  var listaPacientes = [
    'Luan Barroso |29',
    'Luana Barroso |35',
    'Guilherme |18',
    'Pedro Virtosa |15',
    'Antonio Madeira|48',
  ];

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

  //compareTo
  print('.compareTo');
  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
    // if (idadePaciente1 > idadePaciente2) {
    //   return 1;
    // } else if (idadePaciente1 == idadePaciente2) {
    //   return 0;
    // } else {
    //   return -1;
    // }
  });
  print(listaPacientes);

// Pacientes por funcão

  print('Pacientes por funcão');
  var listaPacientes2 = [
    'Luan Barroso |29',
    'Luana Barroso |35',
    'Guilherme |18',
    'Pedro Virtosa |15',
    'Antonio Madeira|48',
  ];
  print('Antes ');
  print(listaPacientes2);
  funcaoQualquer(listaPacientes2);
  print('Depois');
  print(listaPacientes2);
}

void funcaoQualquer(List<String> pacientes) {
  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes);
}
