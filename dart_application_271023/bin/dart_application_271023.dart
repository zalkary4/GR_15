import 'package:dart_application_271023/dart_application_271023.dart'
    as dart_application_271023;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${dart_application_271023.calculate()}!');
  authentification();
}

void authentification() {
  // welcome
  print('Welcome');

  // log/registr
  print('Kattaluu uchun "Y". Kiruu uchun "N" jazynyz');
  var value = stdin.readLineSync();
  if (value == 'Y') {
    print('Kattaluu bolumundo');

    stdout.write('Enter your name: ');
    var name = stdin.readLineSync();

    stdout.write('Enter your last name: ');
    var lastName = stdin.readLineSync();

    stdout.write('Enter your age: ');
    var age = stdin.readLineSync();

    stdout.write('M/F: ');
    var maleF = stdin.readLineSync();

    stdout.write('Enter your login: ');
    var login = stdin.readLineSync();

    stdout.write('Enter your login: ');
    var password = stdin.readLineSync();

    print('name is $name');
    print('last name is $lastName');
    print('your age is $age');
    print('your age is $maleF');
    print('your age is $login');
    print('your age is $password');
    print('Done');
  } else if (value == 'N') {
    print('Kiruu bolumunde');
  } else {
    print(value);
  }
}
