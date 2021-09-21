import 'package:flutter/material.dart';

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
              onTap: () {},
            ),
            SizedBox(
              height: 60,
            ),
            PageItem(
              title: 'Get pregnant',
              subtitle: 'learn about reproductive health',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
