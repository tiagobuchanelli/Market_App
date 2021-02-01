import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/lists/ListProductsCart.dart';
import 'package:restaurant_app/theme/theme-default.dart';
import 'package:restaurant_app/widgets/cards/Cardcart.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: Platform.isIOS ? 0 : 0,
        backgroundColor: AppTheme().primaryColor,
        title: Text("Carrinho"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 0, right: 0, top: 20),
              //primary: false, //using listview and SingleChildScrollView
              //shrinkWrap: true, //using listview and SingleChildScrollView
              scrollDirection: Axis.vertical,
              itemCount: listProductsCart.length,
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CardCart(
                    index,
                    listProductsCart,
                  )),
            ),
          )),
          Container(
            color: Colors.white,
            height: 100,
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "R\$ 89,33",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: FlatButton(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      /*
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Checkout()));
                      */
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
