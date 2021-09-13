import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';

class SlideTop extends StatefulWidget {
  @override
  _SlideTopState createState() => _SlideTopState();
}

class _SlideTopState extends State<SlideTop> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();

    final List<String> imgList = [
      'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/Cooperados/2020/HEINEKEN/2020_08_28_industria_baden_sli.jpg',
      //'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/PaoDeAcucar/2020/05/11/2020_05_07_vinhostritavinhos_sli.jpg',
      'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/Extra/2020/12/2021_01_01_voltapracasa_sli.png',
    ];

    return Column(
      children: <Widget>[
        Container(
            height: 20,
            decoration: BoxDecoration(
              color: AppTheme().primaryColor,
              border: Border.all(width: 0, color: AppTheme().primaryColor),
            )),
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                        width: 0, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(65.0),
                      bottomRight: Radius.circular(65.0),
                    ),
                  ),
                  height: 150,
                ),
                Container(
                  //color: Colors.grey[100],
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(43.0),
                    //   topRight: Radius.circular(43.0),
                    // ),
                  ),
                )
              ],
            ),
            Positioned(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.9,
                      disableCenter: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: 1000.0,
                              ),
                            ))
                        .toList(),
                  )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
