import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = 1980;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background_2.png'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 130),
            Text(
              'Log in your date of birth',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: 'Nunito',
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstOut,
              child: NumberPicker(
                value: _currentValue,
                minValue: 1950,
                maxValue: 2005,
                itemCount: 5,
                itemWidth: 300,
                itemHeight: 55,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                textStyle: TextStyle(
                    color: Color(0xFFCACACA),
                    fontWeight: FontWeight.w900,
                    fontSize: 34,
                    fontFamily: 'Nunito'),
                selectedTextStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    fontFamily: 'Nunito'),
                onChanged: (value) => setState(() => _currentValue = value),
              ),
            ),
            Spacer(),
            Container(
              width: 130,
              height: 40,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF454581), Color(0xFFFCFCFF)],
                ),
              ),
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: StadiumBorder(),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.chevron_right_circle_fill,
                      color: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 60)
          ],
        ),
      ),
    );
  }
}
