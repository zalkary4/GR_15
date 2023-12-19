import 'package:test/test.dart';

class Animal {
  const Animal(this.name);
  final String name;
  void jashayt() {}
  void golos() {
    print('');
  }
}

class Cat extends Animal {
  Cat(super.name);
  @override
  void golos() {
    print('myauu');
    super.golos();
  }
}

class Jolbors extends Cat {
  Jolbors(super.name);
  @override
  void golos() {
    // TODO: implement golos
    super.golos();
  }
}

void main(List<String> args) {
  final cat1 = Cat('Tom');
  print(cat1.name);
}
