void main() {
  final valorCalculado = somaInteiros(10, 10);
  print('A soma de dois inteiros é $valorCalculado');

  final valoresAreceber = somaDouble(30.12, 15.15);
  print('A soma de dois doubles é $valoresAreceber');

  final fraseCompleta = somaFrases('camila é ', 'linda de mais');
  print('A junção das frases é $fraseCompleta');
}

int somaInteiros(int numero1, int numero2) {
  print('Executando a soma de inteiros($numero1, $numero2)');
  return numero1 + numero2;
}

double somaDouble(double numero1, double numero2) {
  print('Execultando a soma de double($numero1, $numero2)');
  return numero1 + numero2;
}

String somaFrases(String frase1, String frase2) {
  print(' ($frase1, $frase2)');
  return frase1 + frase2;
}
