import 'package:dart_application_271023/dart_application_271023.dart'
    as dart_application_271023;
import 'dart:io';

import 'ddd.dart';
//// users list

// Map user = {
//   'name': 'User1',
//   'lastName': 'User1User',
//   'age': 33,
//   'login': 'user@gmail.com',
//   'password': '1234',
// };

////
void main(List<String> arguments) {
  authentification();
}

void authentification() {
  final userler = [];
  var quit = '0';

  do {
    // welcome
    print('Welcome!!!');

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

      stdout.write('Enter your password: ');
      var password = stdin.readLineSync();

      print('name is $name');
      print('last name is $lastName');
      print('your age is $age');
      print('your age is $maleF');
      print('your age is $login');
      print('your age is $password');

      var newUser = {
        'name': user,
        'lastName': lastName,
        'age': age,
        'login': login,
        'password': password,
      };

      userler.add(newUser);

      stdout.write('Exit 1, ulantuu Enter');
      quit = stdin.readLineSync() ?? '';

      print('Done');
    } else if (value == 'N') {
      print('Kiruu bolumundo');

      stdout.write('Enter your login: ');
      var login = stdin.readLineSync();

      stdout.write('Password your login: ');
      var password = stdin.readLineSync();

      for (var user in userler) {
        if (login == user['login'] && password == user['password']) {
          print('User name is correct: $user');
        } else {
          print('Wrong login or password');
        }
      }
      stdout.write('Exit 1, ulantuu Enter');
      quit = stdin.readLineSync() ?? '';
    } else {
      print(value);
    }
  } while (quit != '1');
}
