import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/center_data.dart';
import 'package:flutter/material.dart';

class Biru extends StatelessWidget {
  Biru(
    // this.mycounter, 
    {
    super.key,
  });
  // Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.blue,
      child: CenterData(),
    );
  }
}
