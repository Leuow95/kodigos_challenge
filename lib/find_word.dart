void main() {
  String texto = "Texto inteiro para procurar uma string dentro dela";
  String stringProcurada = "uma";

  int posicao = encontrarString(texto, stringProcurada);

  if (posicao != -1) {
    print("A string foi encontrada na posição: $posicao");
  } else {
    print("A string não foi encontrada.");
  }
}

int encontrarString(String texto, String stringProcurada) {
  for (int i = 0; i <= texto.length - stringProcurada.length; i++) {
    bool encontrou = true;

    //Verifica se a substring do texto corresponde à string procurada
    for (int j = 0; j < stringProcurada.length; j++) {
      if (texto[i + j] != stringProcurada[j]) {
        encontrou = false;
        break;
      }
    }

    if (encontrou) {
      return i;
    }
  }

  return -1;
}
