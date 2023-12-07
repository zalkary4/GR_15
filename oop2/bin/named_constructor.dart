void main(List<String> args) {
  Student aktan = Student(
    '01',
    'Aktan',
    19,
    'IT',
    1,
    'BGU',
    4.5,
  );
}

class Student {
  Student(
    this.id,
    this.name,
    this.age,
    this.special,
    this.kurs,
    this.university,
    this.avaregeScore,
  );
  String? id;
  String? name;
  int? age;
  String? special;
  int? kurs;
  String? university;
  double? avaregeScore;

  void taanysh() {
    print(
      'My name is $name, Jashym $age, $university $kurs okuim, kesibim $special, ortocho baam $avaregeScore',
    );
  }
}
