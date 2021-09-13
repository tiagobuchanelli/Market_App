import 'package:flutter/material.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Components/ItemCategoria.dart';

class CagoriasLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemCategoria(image: "assets/bebidas_icon.png", name: 'Bebidas'),
          ItemCategoria(image: "assets/carnes_icon.png", name: 'Carnes'),
          ItemCategoria(
              image: "assets/congelados_icon.png", name: 'Congelados'),
          ItemCategoria(image: "assets/mercearia_icon.png", name: 'Mercearia'),
          ItemCategoria(image: "assets/frutas_icon.png", name: 'Frutas'),
          ItemCategoria(image: "assets/padaria_icon.png", name: 'Padaria'),
          ItemCategoria(
              image: "assets/higiene_icon.png", name: 'Higiene e Beleza'),
          ItemCategoria(image: "assets/limpeza_icon.png", name: 'Limpeza'),
          ItemCategoria(image: "assets/pets_icon.png", name: 'Pets'),
        ],
      ),
    );
  }
}
