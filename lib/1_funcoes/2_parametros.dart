void main() {
  // Parametros Nomeados são nullables por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');

  somaDoublesObrigatorios(numero2: 5.2, numero1: 10.2);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

// Parametros podem ser promovidos a non null se forem checados.
double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return (numero1 + numero2);
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}
