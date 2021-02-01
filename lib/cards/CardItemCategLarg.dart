import 'package:flutter/material.dart';
import 'package:restaurant_app/models/ItemCategLarg.dart';

class CardtItemCategLarg extends StatefulWidget {
  ItemCategLarg bxSecoesH;
  CardtItemCategLarg(this.bxSecoesH);

  @override
  _CardtItemCategLargState createState() => _CardtItemCategLargState();
}

class _CardtItemCategLargState extends State<CardtItemCategLarg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).primaryColor),
      width: 180,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.bxSecoesH.id);
          //Navigator.pushNamed(context, RouteGenerator.resultadoBuscasPadrao);
        },
        child: Padding(
          padding: EdgeInsets.only(right: 5, left: 20),
          child: Card(
            margin: EdgeInsets.zero,
            color: Theme.of(context).primaryColor,
            elevation: 0,
            semanticContainer: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(int.parse(widget.bxSecoesH.cor))),
                  child: Center(
                      child: Text(widget.bxSecoesH.name,
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                ),
              ],
            ), /*Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.empresa.imagem_capa)
                      )
                  )
                  child: Container(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7)
                              ),
                              color: Colors.black26,
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(left: 12,top: 10, bottom: 5, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      widget.empresa.nome_empresa,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      widget.empresa.endereco_cidade,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          )
                      )
                  ),
                ),*/
          ),
        ),
      ),
    );
  }
}
