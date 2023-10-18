import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  DataWidget(
      // this.mycounter,
      {
    super.key,
  });
  // Counter mycounter;

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return BlocBuilder(
      bloc: mycounter,
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
