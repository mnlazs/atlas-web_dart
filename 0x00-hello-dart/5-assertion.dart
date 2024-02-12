void main(List<String> args) {
  try {
    // Intenta obtener el primer argumento y convertirlo a entero.
    int score = int.parse(args[0]);

    // Usa assert para verificar la condición del puntaje.
    // Si la aserción falla, Dart lanza una excepción automáticamente.
    assert(score >= 80, "The score must be bigger or equal to 80");
    print("You Passed");
  } on RangeError {
    // Captura el error si se intenta acceder a un elemento fuera de rango (es decir, no se pasaron argumentos).
    print("Error: No score provided. Please run the program with a score argument.");
  } on FormatException {
    // Captura el error si el argumento proporcionado no puede convertirse a int.
    print("Invalid score: Please make sure you enter a valid number.");
  } on AssertionError {
    // Captura la aserción fallida para manejar puntajes menores a 80.
    print("Uncaught Error: Assertion failed: The score must be bigger or equal to 80");
  }
}
