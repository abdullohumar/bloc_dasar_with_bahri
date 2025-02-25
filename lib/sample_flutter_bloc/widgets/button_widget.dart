import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/bloc/bloc/new_counter_bloc.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              context.read<NewCounterBloc>().add(IncrementEvent());
            }, child: const Text('Increment')),
        const SizedBox(width: 16),
        ElevatedButton(
            onPressed: () {
              context.read<NewCounterBloc>().add(DecrementEvent());
            }, child: const Text('Decrement')),
      ],
    );
  }
}
