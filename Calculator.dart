import 'dart:io';

void main() {
  try {
    print('Enter first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    print('Choose an operation (+, -, *, /): ');
    String? operation = stdin.readLineSync();

    if (operation == null) {
      print('Invalid operation');
      return;
    }

    double result = 0;

    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print('Error: Division by zero is not allowed.');
          return;
        }
        break;
      default:
        print('Invalid operation');
        return;
    }

    print('Result: $result');
  } on FormatException {
    print('Error: Invalid number format. Please enter a valid number.');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}


