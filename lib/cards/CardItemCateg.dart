import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/models/ItemCateg.dart';

class CardtItemCateg extends StatefulWidget {
  ItemCateg bxSecoesH;
  CardtItemCateg(this.bxSecoesH);

  @override
  _CardtItemCategState createState() => _CardtItemCategState();
}

class _CardtItemCategState extends State<CardtItemCateg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[100]),
      width: 200,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.bxSecoesH.id);
          //Navigator.pushNamed(context, RouteGenerator.resultadoBuscasPadrao);
        },
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 20),
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.grey[100],
            elevation: 0,
            semanticContainer: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      /*border: Border.all(
                              color: Colors.grey[100],
                              width: 1.0),*/
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.white),
                      color: Colors.white
                      // gradient: LinearGradient(
                      //     //colors: [Colors.white, Colors.white],
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight),
                      ),
                  child: FadeInImage.assetNetwork(
                    alignment: Alignment.topCenter, // add this
                    placeholder: 'dummyimage',
                    image: widget.bxSecoesH.image,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      widget.bxSecoesH.price,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                    ),
                    Text(
                      widget.bxSecoesH.priceOld,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Text(
                  widget.bxSecoesH.discounts,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Text(
                  widget.bxSecoesH.name,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
