import 'package:flutter/material.dart';
import 'package:restaurant_app/views/tabs.page.dart';

final ThemeData temaPadrao = ThemeData(
  //primaryColor: Color(0xffCCF83E),
  primaryColor: Color(0xffffdd00), //Colors.green[400],
  accentColor: Color(0xffCCF83E), //Colors.greenAccent //Color(0xff25D366),
);

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: temaPadrao,
    home: TabsPage(),
  ));
}
