class TelephoneChecker {
  static bool isValid(String str) {
    String pattern =
        r'^(\+?\d{1,3}[-.\s]?)?(\(?\d{1,4}\)?[-.\s]?)?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}$';
    RegExp regExp = RegExp(pattern);

    return regExp.hasMatch(str);
  }
}
