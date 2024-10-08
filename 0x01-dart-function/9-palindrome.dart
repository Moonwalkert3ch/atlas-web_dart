//  function isPalindrome() that accepts one argument String and returns True if the input String is a palindrome otherwise it returns False.
// A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome.

bool isPalindrome(String s) {
  // check if string length is less than 3 characters
  if (s.length < 3) {
    return false;
  }

  // reverses the string and compares it to the original if it returns true its a palindrome
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}