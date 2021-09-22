import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/main_bloc/main_bloc.dart';
import '/main_bloc/main_state.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DATE OF BIRTH', style: TextStyle(color: Colors.black),),
                SizedBox(height: 20,),
                Text(state.birthDate.toString())
              ],
            ),
          ),
        );
      },
    );
  }
}
