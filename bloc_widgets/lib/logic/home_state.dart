part of 'home_cubit.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeErrorState extends HomeState {
  HomeErrorState(this.message);
  final String message;
}
