// add the Getters and Setters so we can assign and retrieve the value.
// Should use get keyword for the getter.
// Should use set keyword for the setter.

class Password {
  // private property
  String? _password;

  // define getter
  String? get password {
    return _password;
  }

  // define setter
  set password(String? newPassword) {
    this._password = newPassword;
  }

  // constructor initialize the property password
  Password({required String password}) : _password = password;

  // method to check if password is valid
  bool isValid() {
    if (_password == Null) return false;

    String entry = _password!;

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
    return "Your Password is: $_password";
  }
}
