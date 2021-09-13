import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';

class TabMenus extends StatefulWidget {
  @override
  _TabMenusState createState() => _TabMenusState();
}

class _TabMenusState extends State<TabMenus> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
