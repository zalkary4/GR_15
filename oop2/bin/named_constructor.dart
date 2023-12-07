void main(List<String> args) {
  Student aktan = Student();
}

class Student {
  String? name;
  String? id;
  String? special;
  int? age;
  int? kurs;
  String? university;
  double? avaregeScore;

  void taanysh() {
    print(
      'My name is $name, Jashym $age, $university $kurs okuim, kesibim $special, ortocho baam $avaregeScore',
    );
  }
}
