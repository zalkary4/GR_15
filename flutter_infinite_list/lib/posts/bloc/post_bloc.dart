import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';
import 'package:http/http.dart';

part 'post_event.dart';
part 'post_state.dart';

const _postLimit = 20;
const throttleDuration = Duration(milliseconds: 100);

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.httpClient}) : super(PostState()) {
    on<PostEvent>((event, emit) {});
  }
  final Client httpClient;

  Future<List<Post>> _fetchStatus([
    int startIndex = 0,
  ]) async {
    final uri = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts?_start=$startIndex&_limit=$_postLimit');
  }
}
