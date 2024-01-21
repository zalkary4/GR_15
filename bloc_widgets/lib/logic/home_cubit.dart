import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

var i = 20;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  Future<void> parseNumber(String value) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final parsedValue = num.parse(value);
      log(parsedValue.toString());
      emit(HomeSuccessState(parsedValue));
      // i = parsedValue;
    } catch (e) {
      log(e.toString());
      emit(HomeErrorState(e.toString()));
    }
  }
}
