import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // EXTENSION METHOD
    // 1. context.read()
    // 2. context.watch()
    // 3. context.select()

    // CounterBloc mycounter = context.read<CounterBloc>(); //hanya membaca 1 kali (pertama kali)
    // CounterBloc mycounter = context.watch<CounterBloc>(); //membaca berkali kali (setiap ada perubahan pada state bloc)
    // String nameUser =context.select<UserBloc, String>((value) => value.state['name']);
    // int ageUser = context.select<UserBloc, int>((value) => value.state['age']);
    UserBloc myuser = context.read<UserBloc>();
    print("Build Scafold");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              String nameUser = context
                  .select<UserBloc, String>((value) => value.state['name']);
              print("BUILD NAME");
              return Text("NAMA : $nameUser");
            }),
            Builder(builder: (context) {
              int ageUser =
                  context.select<UserBloc, int>((value) => value.state['age']);
              print("BUILD AGE");
              return Text("UMUR : $ageUser");
            }),
            // Text("NAMA : $nameUser"),
            // Text("UMUR : $ageUser"),
            // Builder(
            //   builder: (context) {
            //     CounterBloc mycounter = context.watch<CounterBloc>();
            //     print("BUILD TEXT");
            //     return Text(
            //       "${mycounter.state}",
            //       style: TextStyle(fontSize: 50),
            //     );
            //   },
            // ),
            // Text(
            //   "${mycounter.state}",
            //   style: TextStyle(fontSize: 50),
            // ),
            // BlocBuilder<CounterBloc, int>(
            //   bloc: mycounter,
            //   builder: (context, state) {
            //     return Text(
            //       "${state}",
            //       style: TextStyle(fontSize: 50),
            //     );
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    myuser.changeAge(myuser.state['age'] - 1);
                    // context.read<CounterBloc>().remove();
                    // mycounter.remove();
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    myuser.changeAge(myuser.state['age'] + 1);
                    // context.read<CounterBloc>().add();
                    // mycounter.add();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
