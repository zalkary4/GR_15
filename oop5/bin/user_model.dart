class User {
  User({
    required this.id,
    required this.name,
    required this.lastName,
  });
  final int id;
  final String name;
  final String lastName;
  void sentTx() {
    print('senTx ishtedi');
  }
}
