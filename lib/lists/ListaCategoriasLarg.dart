import 'package:flutter/material.dart';
import 'package:restaurant_app/cards/CardItemCategLarg.dart';
import 'package:restaurant_app/models/ItemCategLarg.dart';

class ListaCategoriasLarg extends StatefulWidget {
  final ItemCategLarg myTile;
  ListaCategoriasLarg(this.myTile);

  @override
  _ListaCategoriasLargState createState() => _ListaCategoriasLargState();
}

class _ListaCategoriasLargState extends State<ListaCategoriasLarg> {
  @override
  Widget build(BuildContext context) {
    return _buildTiles(widget.myTile);
  }

  Widget _buildTiles(ItemCategLarg t) {
    return new CardtItemCategLarg(t);
  }
}

List<ItemCategLarg> listaCategoriasDados = <ItemCategLarg>[
  new ItemCategLarg(
    'Frete Grátis', //nome
    '0xffE0AF0C', //descricao
  ),
  new ItemCategLarg(
    'Promoções', //nome
    '0xffD41900', //descricao
  ),
  new ItemCategLarg(
    'Volta as Aulas', //nome
    '0xff7834E0', //descricao
  ),
  new ItemCategLarg(
    'Churrasco', //nome
    '0xffBF5C00', //descricao
  ),
];

List<ItemCategLarg> listaCategoriasTabs = <ItemCategLarg>[
  new ItemCategLarg(
    'BEBIDAS', //nome
    '0xffE8871A', //descricao
  ),
  new ItemCategLarg(
    'DESPENSA', //nome
    '0xffFFAF1C', //descricao
  ),
  new ItemCategLarg(
    'GELADEIRA', //nome
    '0xff4D6EE8', //descricao
  ),
  new ItemCategLarg(
    'CARNES, AVES E PEIXES', //nome
    '0xffE82A05', //descricao
  ),
  new ItemCategLarg(
    'HORTIFRUTI', //nome
    '0xff0AC785', //descricao
  ),
  new ItemCategLarg(
    'FREEZER', //nome
    '0xffE32F2B', //descricao
  ),
  new ItemCategLarg(
    'PADARIA', //nome
    '0xffE38719', //descricao
  ),
  new ItemCategLarg(
    'HIGIENE E LIMPEZA', //nome
    '0xff868BE3', //descricao
  ),
  new ItemCategLarg(
    'LIMPEZA E LAVANDERIA', //nome
    '0xff95B5FD', //descricao
  ),
  new ItemCategLarg(
    'VARIEDADES', //nome
    '0xff030305', //descricao
  ),
];
