void main() {
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

  //Transformando a string azul em um enum COres.azul.
  // Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  //A parti da versão 2.15
  print(Cores.azul.name);
}

enum Cores { azul, vermelho, laranja, verde, preto }
