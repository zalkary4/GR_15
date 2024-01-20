import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

var i = 20;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState());
  Future<void> parseNumber(String value) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    try {} catch (e) {}
  }
}
