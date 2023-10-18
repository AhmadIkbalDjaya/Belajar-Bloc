import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/merah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Counter mycounter = Counter();
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEPENDENCY INJECTION"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.green,
                child: InkWell(
                  onTap: () {
                    mycounter.decrement();
                  },
                  child: const SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Merah(mycounter),
              Merah(),
              Material(
                color: Colors.green,
                child: InkWell(
                  onTap: () {
                    mycounter.increment();
                  },
                  child: const SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
