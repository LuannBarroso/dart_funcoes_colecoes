void main() {
  // Parametros podem ser promovidos a non null se forem checados.
  // Parametros Nomeados são nullables por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}
