import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc mycounter = context.read<CounterBloc>();
    ThemeBloc mytheme = context.read<ThemeBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text("HOME")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MultiBlocListener(
              listeners: [
                // listerner counter
                BlocListener<CounterBloc, int>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Di Atas 10"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  listenWhen: (previous, current) {
                    if (current > 10) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                ),
                BlocListener<ThemeBloc, bool>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Tema Gelap"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  listenWhen: (previous, current) {
                    if (!current) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                )
              ],
              child: BlocBuilder<CounterBloc, int>(
                bloc: mycounter,
                builder: (context, state) {
                  return Text(
                    "$state",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  );
                },
              ),
            ),
            // BlocListener<ThemeBloc, bool>(
            //   listener: (context, state) {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(
            //         content: Text("Tema Gelap"),
            //         duration: Duration(seconds: 1),
            //       ),
            //     );
            //   },
            //   listenWhen: (previous, current) {
            //     if (current == false) {
            //       return true;
            //     } else {
            //       return false;
            //     }
            //   },
            //   child: BlocListener<CounterBloc, int>(
            //     listener: (context, state) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text("Di Atas 10"),
            //           duration: Duration(seconds: 1),
            //         ),
            //       );
            //     },
            //     listenWhen: (previous, current) {
            //       if (current > 10) {
            //         return true;
            //       } else {
            //         return false;
            //       }
            //     },
            //     child: BlocBuilder<CounterBloc, int>(
            //       bloc: mycounter,
            //       builder: (context, state) {
            //         return Text(
            //           "$state",
            //           style: const TextStyle(
            //             fontSize: 50,
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    mycounter.remove();
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    mycounter.add();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytheme.changeTheme();
        },
      ),
    );
  }
}
