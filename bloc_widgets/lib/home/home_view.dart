import 'package:bloc_widgets/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home view')),
      body: Column(
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
              // return Text(state.toString());
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                final homeCubit = context.read<HomeCubit>();
                homeCubit.parseNumber('234e');
              },
              child: const Text('parse'),
            ),
          ),
        ],
      ),
    );
  }
}
