import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/cards/category-item.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(image: "assets/bebidas_icon.png", name: 'Bebidas'),
          CategoryItem(image: "assets/carnes_icon.png", name: 'Carnes'),
          CategoryItem(image: "assets/congelados_icon.png", name: 'Congelados'),
          CategoryItem(image: "assets/mercearia_icon.png", name: 'Mercearia'),
          CategoryItem(image: "assets/frutas_icon.png", name: 'Frutas'),
          CategoryItem(image: "assets/padaria_icon.png", name: 'Padaria'),
          CategoryItem(
              image: "assets/higiene_icon.png", name: 'Higiene e Beleza'),
          CategoryItem(image: "assets/limpeza_icon.png", name: 'Limpeza'),
          CategoryItem(image: "assets/pets_icon.png", name: 'Pets'),
        ],
      ),
    );
  }
}
