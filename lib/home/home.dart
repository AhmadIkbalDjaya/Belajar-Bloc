import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/merah.dart';
import 'package:belajar_bloc/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEPENDENCY INJECTION"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return BlocProvider.value(
          //         value: mycounter,
          //         child: const OtherPage(),
          //       );
          //       // return BlocProvider(
          //       //   create: mycounter,
          //       //   child: const OtherPage(),
          //       // );
          //     },
          //   ),
          // );
          Navigator.pushNamed(context, "/other");
        },
        child: const Icon(
          Icons.navigate_next_outlined,
        ),
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
              const Merah(),
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
