part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  HomeSuccessState(this.data);
  final num data;
}

class HomeErrorState extends HomeState {
  HomeErrorState(this.message);
  final String message;
}
