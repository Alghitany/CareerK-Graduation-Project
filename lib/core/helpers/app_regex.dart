class AppRegex {
  static bool isValidEmail(String email) {
    return RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    ).hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$',
    ).hasMatch(password);
  }

  static bool doPasswordsMatch(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  static bool isValidName(String name) {
    return RegExp(r"^[A-Za-z\s]{2,50}$").hasMatch(name);
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^[0-9]{8,12}$').hasMatch(phoneNumber);
  }

  static bool isValidDescription(String description) {
    return RegExp(r'^\s*(?:\S\s*){20,50}$').hasMatch(description);
  }

  static bool isValidNumber(String number) {
    return RegExp(r'^\d+$').hasMatch(number); // Only digits
  }
}
