import 'package:flutter/material.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/ViewModels/ItemCategoria.dart';
import 'package:restaurant_app/App/Modulos/views/ProductDetails.dart';

class CardSection extends StatelessWidget {
  final int index;
  final List<ItemCategoria> listData;

  CardSection(this.index, this.listData);

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
                  listData[index].descricao,
                  listData[index].imagem,
                  listData[index].unidade,
                  listData[index].desconto,
                  listData[index].valorVenda,
                  listData[index].valorVendaAntigo,
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
                    child: Image.network(listData[index].imagem)),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        listData[index].valorVenda,
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
                        listData[index].valorVendaAntigo,
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
                  listData[index].desconto,
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
                  listData[index].descricao,
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
                  listData[index].unidade,
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
                /*GFButton(
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
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
