void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print('.numerosSet.toset');
  print(numerosSet.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 7};
  var numeros2 = {1, 2, 3, 4};

  print('.diference()');
  print(numeros1.difference(numeros2));

//Usando o union será printado na tela a diferença oq nao tem na outra variavel, no caso do exemplo seria o numero 5,7.
  print('.union');
  print(numeros1.union(numeros2));
}
