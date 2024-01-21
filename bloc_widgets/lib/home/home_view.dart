import 'package:bloc_widgets/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home view')),
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeErrorState) {
            showAdaptiveDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Something wrong'),
                content: Text('Value is ${state.message}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeInitialState) {
                  return const Text('Inintial');
                } else if (state is HomeLoadingState) {
                  return const CircularProgressIndicator();
                } else if (state is HomeSuccessState) {
                  return Text('success ${state.data}');
                } else if (state is HomeErrorState) {
                  return Text('error, ${state.message}');
                } else {
                  return const Text('unknown');
                }
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final homeCubit = context.read<HomeCubit>();
                  homeCubit.parseNumber('234s');
                },
                child: const Text('parse'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
