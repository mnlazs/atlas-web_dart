int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sumResult = add(a, b);
  int subResult = sub(a, b);
  return 'Sum of $a and $b is $sumResult and subtraction is $subResult';
}
