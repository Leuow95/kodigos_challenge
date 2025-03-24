void main() {
  int n = 5;
  num resultado = multiplicacaoPrimos(n);
  print("O produto dos primeiros \$n números primos é: $resultado");
}

bool ehPrimo(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

num multiplicacaoPrimos(int n) {
  int contador = 0, numero = 2;
  num resultado = 1;

  while (contador < n) {
    if (ehPrimo(numero)) {
      resultado *= numero;
      contador++;
    }
    numero++;
  }

  return resultado;
}
