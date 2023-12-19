class User {
  User({
    required this.id,
    required String nameValue,
    // required this.name,
    required this.lastName,
  }) : _name = nameValue;
  final int id;
  final String _name;
  final String lastName;
  void sentTx() {
    print('senTx ishtedi');
  }
}
