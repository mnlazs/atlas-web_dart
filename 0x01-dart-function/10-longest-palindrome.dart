bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) return "none";

  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) { // Comienza en i + 2 para asegurar una longitud mínima de 3
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isNotEmpty ? longest : "none";
}

void main() {
  print(longestPalindrome("abcde")); // "none"
  print(longestPalindrome("azeghjhg")); // "ghjhg"
  print(longestPalindrome("aaabvf")); // "aaa"
}
