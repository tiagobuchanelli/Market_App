import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor =
    const Color(0xffffdd00); //Color(0xFFF75260); //Color(0xff7F4FFF);
const primaryColorSplashScreen = const Color(0xff341740);
const backgroundColor = Colors.white;

//CORES PADROES
// const cor1 = Colors.blue;
// const cor2 = Color(0xFFF75260);
// const cor3 = Colors.blueGrey;
// const cor4 = Colors.orange;
// const cor5 = Colors.deepPurple;
// const cor6 = Colors.brown;
// const cor7 = Colors.red;

ThemeData AppTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    textTheme: new TextTheme(
      //defined for the title default

      subtitle1: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 12,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //subtitle2: new TextStyle(color: Colors.red),
      //body1: new TextStyle(color: Colors.red),
      //body2: new TextStyle(color: Colors.red),
      headline6: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      headline5: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 24,
          fontWeight: FontWeight.w300,
          fontFamily: "Poppins"),
      headline4: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 30,
          fontWeight: FontWeight.w300,
          fontFamily: "Poppins"),
      headline3: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      headline2: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
      headline1: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //button: new TextStyle(color: Colors.green),
      //headline: new TextStyle(color: Colors.deepPurple)
    ),

    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        iconTheme:
            IconThemeData(color: Colors.black)), //Vai afetar todas as app bar
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    accentColor: Colors.blueAccent,
    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xFF00C569),
    scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
