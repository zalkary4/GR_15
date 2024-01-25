import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostState()) {
    on<PostEvent>((event, emit) {});
  }
}
