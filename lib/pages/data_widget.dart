import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/pages/center_widget.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: 200,
      child: const CenterWidget(),
    );
  }
}
