import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      color: Colors.amber.shade400,
      child: new Text('فروشگاه'),
    );
  }
}

class HeaderItem extends StatelessWidget {

  final String title;
  final String text;

  HeaderItem({this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.chevron_left, color: Colors.grey),
            Text(
              'مشاهده همه',
              style: TextStyle(fontSize: 17, color: Colors.deepPurple),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ],
    );
  }
}
