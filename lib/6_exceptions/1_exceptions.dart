// ignore: file_names
void main() {
  var idade = '38 anos';

  try {
    int.parse(idade);
  } catch (erro) {
    print(erro);
  }
}
