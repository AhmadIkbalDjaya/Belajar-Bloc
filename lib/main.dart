import 'package:belajar_bloc/app.dart';
import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeBloc mytheme = ThemeBloc();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: const App(),
    );
    // return BlocProvider(
    //   create: (context) => mytheme,
    //   child: BlocBuilder<ThemeBloc, bool>(
    //     bloc: mytheme,
    //     builder: (context, state) {
    //       return MaterialApp(
    //         theme: state == true ? ThemeData.light() : ThemeData.dark(),
    //         home: BlocProvider(
    //           create: (context) => CounterBloc(),
    //           child: HomePage(),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
