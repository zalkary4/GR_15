import 'package:equatable/equatable.dart';

final class Post extends Equatable {
  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  final int userId;
  final int id;
  final String title;
  final String body;

  @override
  List<Object> get props => [userId, id, title, body];
}






// import 'package:equatable/equatable.dart';

// final class Post extends Equatable {
//   const Post({required this.id, required this.title, required this.body});

//   final int id;
//   final String title;
//   final String body;

//   @override
//   List<Object> get props => [id, title, body];
// }