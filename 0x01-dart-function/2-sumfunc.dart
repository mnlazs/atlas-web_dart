int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sumResult = add(a, b);
  int subResult = sub(a, b);
  return 'Add $a + $b = $sumResult\nSub $a - $b = $subResult';
}

void main() {
  int a = 8;
  int b = 5;
  String message = showFunc(a, b);
  print(message);
}
