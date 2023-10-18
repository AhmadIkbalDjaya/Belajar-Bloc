import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/kuning.dart';
import 'package:flutter/material.dart';

class Merah extends StatelessWidget {
  Merah(
    // this.mycounter, 
    {
    super.key,
  });

  // Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Kuning(),
    );
  }
}
