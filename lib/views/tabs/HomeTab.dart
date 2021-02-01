import 'dart:io';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/lists/ListaCategorias.dart';
import 'package:restaurant_app/theme/theme-default.dart';
import 'package:restaurant_app/views/CartPage.dart';
import 'package:restaurant_app/widgets/category-list.dart';
import 'package:restaurant_app/widgets/search-box.widget.dart';
import 'package:restaurant_app/widgets/section-page.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
    // TODO: implement initState

    //_controlFirstAccess();
    //final video = File('images/Intropet.mp4');
    print("passou da função controlfirst acesso");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: AppTheme().primaryColor,
        elevation: Platform.isIOS ? 0 : 0,
        //brightness: Brightness.dark,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'MarketApp',
            style: AppTheme().textTheme.headline5.copyWith(
                color: Colors.black, fontWeight: FontWeight.w600), //Anton
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Badge(
                //badgeContent: Text('2', style: TextStyle(color: Colors.green[700])),
                badgeColor: Colors.white,
                position: BadgePosition.topEnd(top: 5),
                showBadge: false,
                child: Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: Icon(
                    FontAwesomeIcons.shoppingCart,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartPage()));
            },
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.search,
              size: 16,
              color: Colors.black,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20))
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchBox(),
            // SizedBox(
            //   height: 15,
            //   child: Container(
            //     color: Colors.grey[200],
            //   ),
            // ),
            SizedBox(
              height: 13,
            ),
            Container(
              //margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.only(top: 10, bottom: 0),
              color: Colors.grey[100],
              height: 140,
              child: CategoryList(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey[100],
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                height: 0.5,
                color: Colors.grey[400],
              ),
            ),

            SizedBox(
              height: 15,
            ),
            SectionPage(
                'Hortifruti', listaCatFruteiraDados, false, Colors.grey[100]),
            SizedBox(
              height: 15,
            ),
            SectionPage(
                'Bebidas', listaCatBebidasDados, false, Colors.grey[100]),

            SizedBox(
              height: 15,
            ),
            SectionPage('carnes, Aves e Peixes', listaCatCarnesDados, false,
                Colors.grey[100]),
            /*SizedBox(
              height: 15,
            ),
            SectionPage('carnes, Aves e Peixes', listaCatCarnesDados, false,
                Colors.grey[100]),*/
            SizedBox(
              height: 15,
            ),
            /*SectionPage(
                'Especiais', listaCatPromo, true, AppTheme().primaryColor),*/
            SectionPage('Especiais', listaCatPromo, true, Colors.black),
          ],
        ),
      ),
    );
  }
}
