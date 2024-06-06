import 'package:flutter/material.dart';
import 'package:telephone_check/telephone_check.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String number = "1-800-555-5555";
    String resultString = '';
    if (TelephoneChecker.isValid(number)) {
      print('The number: $number you entered is valid');
      resultString = 'The number: $number you entered is valid';
    } else {
      resultString = 'The number: $number you entered is valid';
      print('The number: $number you entered is invalid');
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text(resultString),
          ),
        ),
      ),
    );
  }
}
