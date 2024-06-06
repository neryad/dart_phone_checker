telephoneCheck(String str) {
  String pattern = r'(^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$)';
  RegExp regExp = new RegExp(pattern);

  if (regExp.hasMatch(str)) {
    print('The number: $str you entered is valid');
    return true;
  } else {
    print('The number: $str you entered is invalid');
    return false;
  }
}
