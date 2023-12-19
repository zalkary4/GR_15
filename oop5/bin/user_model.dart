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
