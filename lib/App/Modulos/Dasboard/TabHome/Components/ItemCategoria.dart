import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCategoria extends StatelessWidget {
  final String image;
  final String name;

  ItemCategoria({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 5),
      child: Column(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey.shade300,
                  offset: new Offset(1, 1),
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(64),
              ),
              border: Border.all(color: Colors.white),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
          )
        ],
      ),
    );
  }
}
