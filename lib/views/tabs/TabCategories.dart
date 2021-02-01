import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/theme/theme-default.dart';

import '../../lists/ListaCategoriasLarg.dart';

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
            GFImageOverlay(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  lista[index].name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                          color: Color(int.parse(lista[index].cor)),
                          letterSpacing: .9,
                          fontSize: 35)),
                )),
              ),
              colorFilter: new ColorFilter.mode(
                  Colors.grey[100].withOpacity(0.90), BlendMode.lighten),
              image: NetworkImage(
                  'https://image.freepik.com/fotos-gratis/doodle-food-icons-seamless-background_3248-3676.jpg'),
              boxFit: BoxFit.cover,
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
