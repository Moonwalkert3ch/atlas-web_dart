class Password {
  String? password;

  // method to check if password is valid
  bool isValid() {
    if (password == Null) return false;

    String entry = password!;

    // check length must be 8-16 chars
    if (entry.length < 8 || entry.length > 16) {
      return false;
    }

    // contains Uppercase letters
    bool hasUpperCase = entry.contains(RegExp(r'[A-Z]'));

    // contains lowercase letters
    bool hasLowerCase = entry.contains(RegExp(r'[a-z]'));

    // contains numbers
    bool hasNumber = entry.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasNumber;
  }

  // override the toString method
  @override
  String toString() {
    return "Your Password is: $password";
  }
}