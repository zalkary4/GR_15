// void main(List<String> arguments) {
//   print('Hello world: ${oop2.calculate()}!');
// }
void main() {
  Dog tuzik = Dog();
  tuzik.name = 'Tuzik';
  tuzik.unChygar();

  Cat kisa = Cat();
  kisa.name = 'Kisa';
  kisa.unChygar();
}

class Dog {
  String? name;

  void unChygar() {
    print('Gav gav');
  }
}

class Cat {
  String? name;
  void unChygar() {
    print('Meo meo');
  }
}
