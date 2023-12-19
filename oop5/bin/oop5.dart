import 'user_model.dart';

void main(List<String> arguments) {
  // print('Hello world: ${oop4.calculate()}!');

  final user1 = User(
    id: 1,
    nameValue: 'Ivan',
    lastNameValue: 'Ivanov',
  );

  final client1 = Client();
  client1.name = 'Ivan';
  client1.setName('Ivan');
  client1.age;
  client1.getAge;
}
