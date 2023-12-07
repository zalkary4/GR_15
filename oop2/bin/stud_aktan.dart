class Student {
  Student({
    this.id,
    this.name,
    this.age,
    this.special,
    this.kurs,
    this.university,
    this.avaregeScore,
  });
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

class StudentNamed {
  StudentNamed({
    this.id,
    this.name,
    this.age,
    this.special,
    this.kurs = 1,
    this.university = 'Manas',
    this.avaregeScore,
  });
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
