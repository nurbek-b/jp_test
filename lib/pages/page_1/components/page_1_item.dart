import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const PageItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,

      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFFFEFEF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontFamily: 'Nunito'),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Nunito'),
        ),
        trailing: IconButton(
          onPressed: onTap,
          icon: Icon(
            CupertinoIcons.chevron_right_circle_fill,
            size: 35,
            color: Color(0xFF53538A),
          ),
        ),
      ),
    );
  }
}
