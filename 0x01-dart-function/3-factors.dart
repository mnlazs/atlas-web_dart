int fact(int f) {
  if (f <= 1) {
    return 1; // Retorna 1 si f es 1 o menor, como se especifica.
  } else {
    return f * fact(f - 1); // Caso recursivo: f * factorial de (f - 1)
  }
}

void main() {
  print(fact(5)); // Debería imprimir 120, que es 5 * 4 * 3 * 2 * 1
  print(fact(1)); // Debería imprimir 1, siguiendo la condición dada
  print(fact(0)); // Debería imprimir 1, ya que f <= 0 retorna 1
  print(fact(-5)); // También debería imprimir 1, siguiendo la condición f <= 0
}
