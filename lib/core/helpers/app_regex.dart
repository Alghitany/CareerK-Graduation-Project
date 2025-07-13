import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/networking/api_constants.dart';

class AppRegex {
  static bool isValidEmail(String? email) {
    if (email.isNullOrEmpty()) return false;

    return RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email!);
  }

  static bool isValidPassword(String password) {
    return !password.isNullOrEmpty() && password.length >= 6;
  }

  static bool doPasswordsMatch(String password, String confirmPassword) {
    return !password.isNullOrEmpty() && password == confirmPassword;
  }

  static bool isValidName(String? name) {
    if (name.isNullOrEmpty()) return false;

    return RegExp(r"^[A-Za-z\s]{2,50}$").hasMatch(name!);
  }

  static bool isValidLocation(String? location) {
    if (location.isNullOrEmpty()) return false;

    return RegExp(r"^[A-Za-z\s]+,\s[A-Za-z\s]+$").hasMatch(location!);
  }

  static bool isValidPhoneNumber(String? phoneNumber) {
    if (phoneNumber.isNullOrEmpty()) return false;
    return RegExp(r'^[0-9]{8,12}$').hasMatch(phoneNumber!);
  }

  static bool isValidDescription(String description) {
    return RegExp(r'^\s*(?:\S\s*){20,50}$').hasMatch(description);
  }

  static bool isValidNumber(String? number) {
    if (number.isNullOrEmpty()) return false;

    return RegExp(r'^\d+$').hasMatch(number!); // Only digits
  }

  static bool isValidPriceRange(String number) {
    if (number.isEmpty) return false;

    return RegExp(
      r'^\d{1,3}(,\d{3})*(\s*-\s*\d{1,3}(,\d{3})*)?\s*(EGP|\$)$',
    ).hasMatch(number);
  }

  static bool isValidUrl(String url) {
    return RegExp(r'^(www\.)?[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+(/.*)?$')
        .hasMatch(url);
  }

  static bool isValidMessage(String message) {
    if (message.isNullOrEmpty()) return false;

    return RegExp(r"^[\s\S]{10,200}$")
        .hasMatch(message); // Allows any character including newlines
  }

  static bool isValidDate(String date) {
    if (date.isNullOrEmpty()) return false;

    return RegExp(
      r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$',
    ).hasMatch(date);
  }

  static String cutBaseUrl(String? imageUrl) {
    String apiBaseUrl = ApiConstants.apiBaseUrl;
    if (imageUrl == null) return '';

    if (imageUrl.startsWith(apiBaseUrl)) {
      return imageUrl.replaceFirst(apiBaseUrl, '');
    } else {
      return imageUrl;
    }
  }

  static bool isSvg(String? imageUrl) {
    String cutUrl = cutBaseUrl(imageUrl);
    return cutUrl.toLowerCase().endsWith('.svg');
  }
}
