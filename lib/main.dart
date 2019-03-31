import 'package:flutter/material.dart';
import 'widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: "Shabnam",
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  Widget horizontalList = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
        ],
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        HeaderItem(title: 'دسته‌بندی‌ها', text: 'نیازمندی مورد نظر خود را انتخاب کنید.',),
        horizontalList,
        HeaderItem(title: 'نزدیک ترین به من', text: 'برترین های نزدیک به خود را پیدا کنید.',),
      ]),
    );
  }
}
