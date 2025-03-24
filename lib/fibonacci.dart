List<int> fibonacci(int N) {
  List<int> fibonacci = [];

  if (N >= 1) {
    fibonacci.add(0);
  }
  if (N >= 2) {
    fibonacci.add(1);
  }

  for (int i = 2; i < N; i++) {
    int nextNumber = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(nextNumber);
  }

  return fibonacci;
}

void main() {
  int N = 10;
  try {
    List<int> result = fibonacci(N);
    print(result);
  } catch (e) {
    print(e);
  }
}
