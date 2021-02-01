import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:restaurant_app/theme/theme-default.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
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
                  GFCarousel(
                    autoPlay: true,
                    pagination: true,
                    height: 200,
                    viewportFraction: 1.0,
                    items: imgList.map(
                      (i) {
                        return Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: Colors.white.withOpacity(0.1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network(
                              i,
                              fit: BoxFit.cover,
                              width: 1000.0,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      setState(() {
                        index;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
