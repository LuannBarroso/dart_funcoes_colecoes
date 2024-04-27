// ignore: file_names
void main() {
  var idade = '38 anos';
  String? nome;
  try {
    int.parse(idade);
    nome!.toLowerCase();
  } on FormatException catch (e, s) {
    print(s);
  } on TypeError catch (e) {
    print('Erro ao converter idade');
  } catch (e) {
    print('Erro ao execultar o programa');
  } finally {
    print('finally');
  }
}
