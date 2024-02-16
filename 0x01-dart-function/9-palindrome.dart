bool isPalindrome(String s) {
  // Verifica si la longitud de la cadena es menor a 3 caracteres
  if (s.length < 3) {
    return false;
  }

  // Convierte la cadena a minúsculas y elimina caracteres no alfanuméricos
  String cleanString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  // Comprueba si la cadena limpia es igual a su inversa
  return cleanString == cleanString.split('').reversed.join('');
}

void main() {
  print(isPalindrome("aa")); // false
  print(isPalindrome("abcba")); // true
  print(isPalindrome("abcde")); // false
}
