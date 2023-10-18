import 'package:belajar_bloc/404/404.dart';
import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/home.dart';
import 'package:belajar_bloc/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRouter {
  final Counter mycounter = Counter();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const HomePage(),
          ),
        );
        break;
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const OtherPage(),
          ),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
