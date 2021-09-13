import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/App/Config/theme/TemaApp.dart';
import 'package:restaurant_app/App/lists/ListaCategoriasLarg.dart';

class TabCategories extends StatefulWidget {
  @override
  _TabCategoriesState createState() => _TabCategoriesState();
}

class _TabCategoriesState extends State<TabCategories> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listaCategoriasTabs.length,
          itemBuilder: (context, index) {
            return _cardCategorias5(context, index, listaCategoriasTabs);
          },
        ),
      ),
    );
  }

  Widget _cardCategorias5(BuildContext context, int index, List lista) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey[100]),
      width: 200,
      height: 80,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.bxSecoesH.id);
          //Navigator.pushNamed(context, RouteGenerator.resultadoBuscasPadrao);

          /*setState(() {
            badge = badge + 1;
          });*/
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Text(listaCategoriasTabs[index].name),
            ),
            Container(
              height: 5,
              color: Colors.grey[200],
            )
          ],
        ),
      ),
    );
  }
}
