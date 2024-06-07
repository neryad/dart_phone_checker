# Telephone Check ![Version](https://img.shields.io/pub/v/telephone_check)

This Dart package helps you validate if a telephone number is well written according to common formats.

## Features

- Validates phone numbers with optional country codes.
- Supports various phone number formats including spaces, dashes, and parentheses.
- Easy to use and integrate into any Dart or Flutter project.

## Installation

### From pub.dev

Run this command:

```bash
flutter pub add telephone_check
```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```bash
dependencies:
 telephone_check: ^0.1.3
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

```bash
import 'package:telephone_check/telephone_check.dart';
```

From GitHub
Alternatively, you can install the package directly from the GitHub repository:

Add this to your package's pubspec.yaml file:

```bash
dependencies:
  telephone_check:
    git:
      url: https://github.com/yourusername/telephone_check.git
```

Then, run dart pub get to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:telephone_check/telephone_check.dart';

void main() {
  String number = "+18095563254";
  if (TelephoneChecker.isValid(number)) {
    print('valid');
  } else {
    print('not valid');
  }

  var validTelephone = TelephoneChecker.isValid(number);
  if (validTelephone) {
    print('valid');
  } else {
    print('not valid');
  }
}
```

## Examples

Here's an example of how you might use the telephone_check package in a Flutter application:

```dart
import 'package:flutter/material.dart';
import 'package:telephone_check/telephone_check.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String number = "1-800-555-5555";
    String resultString = '';
    if (TelephoneChecker.isValid(number)) {
      resultString = 'The number: $number you entered is valid';
    } else {
      resultString = 'The number: $number you entered is invalid';
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

```

## Supported Formats

You can use various types of telephone numbers and codes such as:

- +1 215-855-0889 (US)
- +355 69 903 0544 (AL)
- +57 333 3717545 (CO)
- and more.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request on GitHub.

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes.
4. Commit your changes (git commit -am 'Add new feature').
5. Push to the branch (git push origin feature-branch).
6. Create a new Pull Request.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Acknowledgements

- Inspired by common phone number validation techniques and patterns.

## Tech Stack

![Dart](https://img.shields.io/badge/dart-blue?logo=dart&logoColor=white)

## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
![Pub Publisher](https://img.shields.io/pub/publisher/telephone_check)
![](https://img.shields.io/badge/dart-blue?logo=dart&logoColor=white)

## Changelog

To view the history of changes, refer to [CHANGELOG.md](./CHANGELOG.md).
