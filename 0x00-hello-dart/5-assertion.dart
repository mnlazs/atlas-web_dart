void main(List<String> args) {
  try {
    int score = int.parse(args[0]);
    if (!(score >= 80)) {
      throw Exception("The score must be bigger or equal to 80");
    }
    print("You Passed");
  } on RangeError {
    print("Error: No score provided. Please run the program with a score argument.");
  } on FormatException {
    print("Invalid score: Please make sure you enter a valid number.");
  } catch (e) {
    // Usamos e.toString() para obtener el mensaje de error
    print("Uncaught Error: Assertion failed: ${e.toString()}");
  }
}
