import 'package:oop4/oop4.dart' as oop4;

void main(List<String> arguments) {
  // print('Hello world: ${oop4.calculate()}!');
  // final = User(name: name, firtsName: firtsName, age: age, nation: nation, profession: profession, tuulganJer: tuulganJer, password: password,)
}

class User {
  const User({
    required this.name,
    required this.firtsName,
    this.age = 5,
    required this.nation,
    required this.profession,
    required this.tuulganJer,
    required this.password,
  });
  final String name;
  final String firtsName;
  final int age;
  final String nation;
  final String profession;
  final String tuulganJer;
  final String password;
}
