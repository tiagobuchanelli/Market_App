import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/ConfigTabs/HomeTabs.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: AppTheme(),
    home: TabsPage(),
  ));
}
