import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/biru.dart';
import 'package:flutter/material.dart';

class Kuning extends StatelessWidget {
  Kuning(
    // this.mycounter, 
    {
    super.key,
  });
  // Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.amber,
      child: Biru(),
    );
  }
}
