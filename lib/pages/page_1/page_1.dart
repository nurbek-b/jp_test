/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
import 'package:test_pro/main_bloc/main_bloc.dart';
import 'package:test_pro/main_bloc/main_event.dart';
import '/pages/page_2/page_2.dart';
import 'components/page_1_item.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background_1.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageItem(
              title: 'Track my period',
              subtitle: 'contraception and wellbeing',
              onTap: () {
                /// navigate to page 2
                context.read<MainBloc>().add(ShowPage2PageEvent());
              },
            ),
            SizedBox(
              height: 60,
            ),
            PageItem(
              title: 'Get pregnant',
              subtitle: 'learn about reproductive health',
              onTap: () {
                /// navigate to page 2
                context.read<MainBloc>().add(ShowPage2PageEvent());
              },
            )
          ],
        ),
      ),
    );
  }
}
