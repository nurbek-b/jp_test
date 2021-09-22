/* External dependencies */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pro/pages/page_3/page_3.dart';

/* Local dependencies */
import '/pages/page_1/page_1.dart';
import '/pages/page_2/page_2.dart';
import '/main_bloc/main_bloc.dart';
import '/main_bloc/main_event.dart';
import '/main_bloc/main_state.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
        builder: (BuildContext context, MainState state) {
      return Scaffold(body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: _buildPage(state),),);
    });
  }

  Widget _buildPage(state) {
    if (state.currentPage == MainEventType.page_1) return Page1();
    if (state.currentPage == MainEventType.page_2) return Page2();
    if (state.currentPage == MainEventType.page_3) return Page3();
    return widget;
  }
}
