import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/pages/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC PROVIDER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  onTap: () {
                    mycounter.decrement();
                  },
                  borderRadius: BorderRadius.circular(25),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  onTap: () {
                    mycounter.increment();
                  },
                  borderRadius: BorderRadius.circular(25),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
