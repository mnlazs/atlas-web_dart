void main(List<String> args) {
  // Asumimos que el argumento se pasa como un string y necesitamos convertirlo a int.
  int score = int.tryParse(args[0]) ?? 0; // Convierte el argumento a int, usa 0 como predeterminado si falla.

  // Utiliza assert para verificar si el score es >= 80. 
  // Si no es así, lanza un AssertionError con el mensaje deseado.
  assert(score >= 80, 'The score must be bigger or equal to 80');

  // Si el programa llega a este punto, significa que la aserción pasó.
  print('You Passed');
}
