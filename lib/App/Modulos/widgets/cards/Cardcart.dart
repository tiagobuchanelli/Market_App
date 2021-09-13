import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCart extends StatelessWidget {
  int indexPass;
  List listProducts;

  CardCart(
    this.indexPass,
    this.listProducts,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      padding: EdgeInsets.only(left: 10, right: 10, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FadeInImage.assetNetwork(
              alignment: Alignment.topCenter, // add this
              placeholder: 'https://placehold.it/90',
              image: listProducts[indexPass].imageProduct,
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 110,
              padding: EdgeInsets.only(left: 20),
              //color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      listProducts[indexPass].descProduct,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "De:  " + listProducts[indexPass].priceoldProduct,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 14)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          listProducts[indexPass].priceProduct,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        Container(
                          height: 28,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                              border: Border.all(color: Colors.black54)),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 38,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text(
                                    "-",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16)),
                                  ),
                                  onPressed: () => {},
                                ),
                              ),
                              Container(
                                width: 38,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.black54, fontSize: 16)),
                                ),
                              ),
                              Container(
                                width: 38,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text(
                                    "+",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16)),
                                  ),
                                  onPressed: () => {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
