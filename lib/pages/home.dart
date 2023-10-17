import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  Counter mycounter = Counter(init: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC LISTENER "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<Counter, int>(
            bloc: mycounter,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text("Sudah mencapai 15"),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current % 2 == 1) {
                return true;
              } else {
                return false;
              }
            },
            child: BlocBuilder<Counter, int>(
              bloc: mycounter,
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  mycounter.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  mycounter.increment();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
