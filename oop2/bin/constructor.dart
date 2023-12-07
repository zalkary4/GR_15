void main(List<String> args) {
  Car car = Car();
  car.name;
  car.juruu();
}

class Car {
  String? name;

  void juruu() {
    print('$name jurup baratat');
  }
}
