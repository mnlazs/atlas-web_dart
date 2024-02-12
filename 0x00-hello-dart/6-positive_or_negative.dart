void main(List<String> args) {
  // Asegúrate de que se proporciona un argumento
  if (args.isEmpty) {
    print("Please provide a number as an argument.");
    return;
  }
  int number = int.parse(args[0]);
  String result = "is zero";

  if (number > 0) {
    result = "is positive";
  } else if (number < 0) {
    result = "is negative";
  }

  // Imprime el resultado
  print("$number $result");
}
