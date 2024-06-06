import 'package:flutter/material.dart';
import 'package:telephone_check/telephone_check.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var validTelefone = telephoneCheck('+18095563254');
    String resultString = '';

    if (validTelefone) {
      resultString = 'Valid :)';
    } else {
      resultString = 'Not Valid :(';
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello the number is: $resultString'),
          ),
        ),
      ),
    );
  }
}
