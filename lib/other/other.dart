import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder(
          bloc: mycounter,
          builder: (context, state) {
            return Text(
              "$state",
              style: const TextStyle(
                fontSize: 50,
              ),
            );
          },
        ),
      ),
    );
  }
}
