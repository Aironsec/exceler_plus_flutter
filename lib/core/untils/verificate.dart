int exactlyString(String str1, String str2) {
  int minLength = str1.length <= str2.length ? str1.length : str2.length;
  int maxLength = str1.length >= str2.length ? str1.length : str2.length;
  int count = maxLength - minLength;
  for (var i = 0; i < minLength; i++) {
    if (str1[i] != str2[i]) {
      count++;
    }
  }
  return count * 100 ~/ maxLength;
}
