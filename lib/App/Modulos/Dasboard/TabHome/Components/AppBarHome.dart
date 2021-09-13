import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';
import 'package:restaurant_app/App/Modulos/views/CartPage.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme().primaryColor,
      elevation: 0,
      //brightness: Brightness.dark,
      title: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Text(
          'MarketApp',
          style: AppTheme().textTheme.headline5!.copyWith(
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
