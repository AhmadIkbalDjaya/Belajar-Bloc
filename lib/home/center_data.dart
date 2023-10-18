import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/home/data_widget.dart';
import 'package:flutter/material.dart';
class CenterData extends StatelessWidget {
  CenterData(
    // this.mycounter,
    {
    super.key,
  });
  // Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataWidget(),
    );
  }
}