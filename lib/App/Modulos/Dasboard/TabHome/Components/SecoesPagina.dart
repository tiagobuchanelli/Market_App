import 'package:flutter/material.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/ViewModels/ItemCategoria.dart';

import '../../../widgets/cards/card_section.dart';
import '../../../widgets/cards/card_section_promo.dart';

class SecoesPagina extends StatelessWidget {
  final String titleSection;
  final List<ItemCategoria> listData;
  final bool isSectionPromo;
  final Color corBack;

  SecoesPagina(
      this.titleSection, this.listData, this.isSectionPromo, this.corBack);

  final Color padraoCor = Colors.grey.shade100;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: corBack,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
            child: Row(
              children: <Widget>[
                Text(
                  titleSection,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:
                        corBack == Colors.black ? Colors.white : Colors.black87,
                    //fontFamily: 'Red',
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                color: corBack,
                border: Border.all(
                  width: 0,
                  color: corBack,
                )),
            //margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: isSectionPromo ? 350.0 : 370.0,
            child: Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return isSectionPromo
                      ? CardSectionPromo(index, listData)
                      : CardSection(index, listData);
                },
              ),
            )),
      ],
    );
  }
}
