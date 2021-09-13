import 'package:flutter/material.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Components/AppBarHome.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Controllers/TabHome.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Components/ListaCategorias.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Components/SlideTop.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Components/SecoesPagina.dart';
import 'package:restaurant_app/App/lists/ListaCategorias.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = TabHome();

  @override
  void initState() {
    print("passou da função controlfirst acesso");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarHome(
        key: null,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SlideTop(),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 0),
              color: Colors.grey[100],
              height: 140,
              child: CagoriasLista(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey[100],
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                height: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SecoesPagina('Hortifruti', listaCatFruteiraDados, false,
                Colors.grey.shade300),
            SizedBox(
              height: 15,
            ),
            SecoesPagina(
                'Bebidas', listaCatFruteiraDados, false, Colors.grey.shade300),
            SizedBox(
              height: 15,
            ),
            SecoesPagina('carnes, Aves e Peixes', listaCatFruteiraDados, false,
                Colors.grey.shade300),
            SizedBox(
              height: 15,
            ),
            SecoesPagina(
                'Especiais', listaCatFruteiraDados, true, Colors.black),
          ],
        ),
      ),
    );
  }
}
