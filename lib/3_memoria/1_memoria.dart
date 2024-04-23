void main() {
  var lista = ['Luan'];
  print(lista.hashCode);
  funcao(lista);
  print(lista);
}

void funcao(List<String> nomes) {
  nomes.add('barroso');
}
