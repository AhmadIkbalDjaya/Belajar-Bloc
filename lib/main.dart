import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/home.dart';
import 'package:belajar_bloc/other/other.dart';
import 'package:belajar_bloc/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final Counter mycounter = Counter();
  final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: BlocProvider(
      //   create: (context) => Counter(),
      //   child: const HomePage(),
      // ),

      // Named Route
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => BlocProvider.value(
      //         value: mycounter,
      //         child: const HomePage(),
      //       ),
      //   "/other": (context) => BlocProvider.value(
      //         value: mycounter,
      //         child: const OtherPage(),
      //       ),
      // },

      // Generated Route
      onGenerateRoute: router.onRoute,
    );
  }
}
