import 'package:flutter/material.dart';
import 'package:flutter_log_example/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var exampleNumber = '123';
  // var exampleNumber = '+996123456789';
  var exampleMail = 'qwe';
  // var exampleMail = 'mail@gmail.com';
  var phoneNumberContr = TextEditingController();
  var emailContr = TextEditingController();
  // String userPhoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 180, 255),
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 58,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  decorationColor: Colors.white,
                ),
              ),
              TextFormField(
                controller: phoneNumberContr,
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  hintText: '+996 123 456 789',
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                // onChanged: (phoneNumber) {
                //   userPhoneNumber = phoneNumber;
                //   print(userPhoneNumber);
                // },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailContr,
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'mail@gmail.com',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(phoneNumberContr.text);
                  print(emailContr.text);

                  if (exampleNumber == phoneNumberContr.text &&
                      exampleMail == emailContr.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                  } else {
                    // print('Something wrong');
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text('Error'),
                          content: const Text('Wrong number or e-mail'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
