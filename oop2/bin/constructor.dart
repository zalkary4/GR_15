void main(List<String> args) {
  Car car = Car('Tesla');
  car.name;
  car.juruu();
}

class Car {
  Car(this.name);
  String? name;

  void juruu() {
    print('$name jurup baratat');
  }
}
