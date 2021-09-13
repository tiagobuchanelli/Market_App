import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';
import 'package:restaurant_app/App/lists/ListaCategorias.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(this.nameI, this.imageI, this.unidadeI, this.poupeI,
      this.precoI, this.precoDeI, this.descI);

  String nameI;
  String imageI;
  String unidadeI;
  String poupeI;
  String precoI;
  String precoDeI;
  String descI;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
    print("passou da init state detalhes produto");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white); //this change the status bar color to white
    //this sets the navigation bar color to green
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: AppTheme().primaryColor,
        elevation: Platform.isIOS ? 0 : 0,
        //brightness: Brightness.light,

        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(widget.nameI //Anton
              ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              FontAwesomeIcons.heart,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              FontAwesomeIcons.shareAlt,
              size: 20,
              color: Colors.black,
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Image.network(
                    widget.imageI,
                    fit: BoxFit.cover,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.nameI,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ), //Anton
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),*/
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem Ipsum has been the industrys standard dummy text ever since the seconds, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                        maxLines: 3,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey[700]), //Anton
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.precoI,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ), //Anton
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Text(
                          widget.unidadeI,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ), //Anton
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                    ),
                  ],
                ),
              ),
              Container(
                height: 390,
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 30, right: 20, bottom: 20),
                      child: Text(
                        'Você também pode gostar',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ), //Anton
                      ),
                    ),
                    Divider(
                      height: 0.7,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                        color: Colors.grey[100],
                        //margin: EdgeInsets.symmetric(vertical: 20.0),
                        padding: EdgeInsets.only(top: 10, bottom: 0),
                        height: 280.0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listaCatCarnesDadosSugeridos.length,
                            itemBuilder: (context, index) {
                              return new ListaCategorias(
                                  listaCatCarnesDadosSugeridos[index]); //
                            },
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 0, right: 20, bottom: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Dúvidas?',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), //Anton
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Fale conosco',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                            //Anton
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),
                          Icon(
                            FontAwesomeIcons.envelope,
                            size: 20,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Envie-nos um WhattsApp',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                            //Anton
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 20,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
          child:
              Container() /*Container(
          height: 40,
          child: new GFButton(
            text: "Adicionar",
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
              size: 18,
            ),
            textColor: Colors.black,
            color: AppTheme().primaryColor,
            //splashColor: Colors.white,
            type: GFButtonType.solid,
            shape: GFButtonShape.pills,
            onPressed: () {},
          ),
        ),*/
          ),
    );
  }
}
