// function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring

String longestUniqueSubstring(String str) {
  // set lenght for substring characters
  int maxLength = 0;
  String longestSub = "";
  Map<String, int> currentChars = {};
  int start = 0;

  // loop through string to set substring character start and end points
  for (int end = 0; end < str.length; end++) {
    String newChar = str[end];

    // look for new characters that havent been seen yet
    if (currentChars.containsKey(newChar)) {
      start = currentChars[newChar]! + 1 > start ? currentChars[newChar]! + 1 : start;
    }

    // update position in map to find 
    currentChars[newChar] = end;

    // calculate length of substring
    int currentLength = end - start + 1;

    // looks for the longest substring and compares set
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSub = str.substring(start, end + 1);
    }
  }
  return longestSub;
}