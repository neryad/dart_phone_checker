/// The `TelephoneChecker` class in Dart provides a static method `isValid` to check if a given string
/// matches a specific telephone number pattern.
class TelephoneChecker {
  /// The function `isValid` checks if a given string matches a specific phone number pattern.
  ///
  /// Args:
  ///   str (String): The `isValid` function takes a string `str` as input and checks if it matches a
  /// specific phone number pattern. The pattern allows for various formats of phone numbers including
  /// country code, area code, and different separators like dashes, dots, spaces, and parentheses. The
  /// function uses a regular expression to
  ///
  /// Returns:
  ///   The `isValid` function is returning a boolean value. It checks if the input string `str` matches
  /// a specific phone number pattern using a regular expression. If the input string matches the
  /// pattern, the function returns `true`, indicating that the input is a valid phone number.
  /// Otherwise, it returns `false`, indicating that the input is not a valid phone number.
  static bool isValid(String str) {
    String pattern =
        r'^(\+?\d{1,3}[-.\s]?)?(\(?\d{1,4}\)?[-.\s]?)?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}$';
    RegExp regExp = RegExp(pattern);

    return regExp.hasMatch(str);
  }
}
