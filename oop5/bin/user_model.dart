class User {
  User({
    required this.id,
    required String nameValue,
    required String lastNameValue,
  })  : _name = nameValue,
        _lastName = lastNameValue;
  final int id;
  final String _name;
  final String _lastName;
  void sentTx() {
    print('senTx ishtedi');
  }
}

class Client {
  String? _name;
  String? _lastName;
  int? age;

  int? get getAge {
    return age;
  }

  String get fullName {
    return '$_name + $_lastName';
  }

  set name(String name) {
    _name = name;
  }

  void setName(String lastName) {
    _lastName = lastName;
  }
}

class Example {}
