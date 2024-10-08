// function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.

// A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function isPalindrome(). If the input string doesn’t contain any substrings return none.
bool isPalindrome(String s) {
  // check if string length is less than 3 characters
  if (s.length < 3) {
    return false;
  }

  // reverses the string and compares it to the original if it returns true its a palindrome
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  // check if string length is less than 3 characters
  if (s.length < 3) {
    return "none";
  }

  String longest = "";

  // loops through all substrings
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);

      // check if longest palindrome
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }
  
  return longest.isEmpty ? "none" : longest;
}