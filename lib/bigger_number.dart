void main() {
  List<List<num>> matriz = [
    [3, 8, 2],
    [4, 12, 9],
    [1, 5, 7]
  ];

  int a = matriz.length;
  int b = matriz[0].length;

  num maiorNumero = encontrarMaiorNumero(matriz, a, b);
  print("O maior número da matriz é: $maiorNumero");
}

num encontrarMaiorNumero(List<List<num>> matriz, int a, int b) {
  num maior = matriz[0][0];

  for (int i = 0; i < a; i++) {
    for (int j = 0; j < b; j++) {
      if (matriz[i][j] > maior) {
        maior = matriz[i][j];
      }
    }
  }

  return maior;
}
