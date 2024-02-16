String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";
  int start = 0;
  int maxLength = 0;
  String longestSubstring = "";
  Map<String, int> charIndexMap = {};

  for (int i = 0; i < str.length; i++) {
    if (charIndexMap.containsKey(str[i]) && charIndexMap[str[i]]! >= start) {
      start = charIndexMap[str[i]]! + 1;
    }
    charIndexMap[str[i]] = i;
    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      longestSubstring = str.substring(start, i + 1);
    }
  }

  return longestSubstring;
}

void main() {
  print(longestUniqueSubstring("abcacbd")); // "acbd"
  print(longestUniqueSubstring("aaaaaaaa")); // "a"
  print(longestUniqueSubstring("abcde")); // "abcde"
}
