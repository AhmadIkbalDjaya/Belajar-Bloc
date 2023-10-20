import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/user.dart';
import 'package:belajar_bloc/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        // create: (context) => CounterBloc(),
        create: (context) => UserBloc(),
        child: const HomePage(),
      ),
    );
  }
}
