import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/shape/gf_button_shape.dart';
import 'package:getflutter/types/gf_button_type.dart';
import 'package:restaurant_app/models/ItemCateg.dart';
import 'package:restaurant_app/theme/theme-default.dart';
import 'package:restaurant_app/views/ProductDetails.dart';

class CardSection extends StatelessWidget {
  final int index;
  final List<ItemCateg> listData;

  CardSection(@required this.index, @required this.listData);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[100]),
      width: 180,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.bxSecoesH.id);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                  listData[index].name,
                  listData[index].image,
                  listData[index].und,
                  listData[index].discounts,
                  listData[index].price,
                  listData[index].priceOld,
                  'Descrição generica')));
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
                      //
                      //     //colors: [Colors.white, Colors.white],
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight),
                      ),
                  child: FadeInImage.assetNetwork(
                    alignment: Alignment.topCenter, // add this
                    placeholder: 'placeholder card section',
                    image: listData[index].image,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        listData[index].price,
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
                        listData[index].priceOld,
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
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Text(
                  listData[index].discounts,
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
                  listData[index].name,
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
                Text(
                  listData[index].und,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                GFButton(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
