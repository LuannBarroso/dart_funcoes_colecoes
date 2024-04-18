void main() {
  // Funcoes Arrow - ok
  // Funcoes Anonimas - ok
  // TypeDef
  print(somaDosInteiros(10, 10));

  var nome = 'macaquito';
  var idade = 13;
  //Função anonima
  var funcaoQualquer = () {
    print('chamou um macaquito de macaquito');
    return '2132134135';
  };

  print(funcaoQualquer());

  funx1((nome, nomeCompleto, {qq, required x, required x2}) {});
}

// 3 Partes
// 1 Pipo de retorno
// 2 Nome
// 3 Parametros (normais, nomeados, opcionais)
int somaDosInteiros(int numero1, int numero2) => numero1 + numero2;

void funx(
    String Function(String nome, String nomeCompleto,
            {required String? x, required String? x2, int? qq})
        nome) {}

void funx1(FuncaoQueRecebeNomeComplexo nome) {}

void chamarUmaFuncaoDeUmParametro(FuncaoQueRecebeNome funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Luan Barroso';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  print(nomeCompleto);
  print(calculo);
}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = void Function(
    String nome, String nomeCompleto,
    {required String? x, required String? x2, int? qq});
