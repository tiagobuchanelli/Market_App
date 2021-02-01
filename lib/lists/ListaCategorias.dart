import 'package:flutter/material.dart';
import 'package:restaurant_app/cards/CardItemCateg.dart';
import 'package:restaurant_app/models/ItemCateg.dart';

class ListaCategorias extends StatefulWidget {
  final ItemCateg myTile;
  ListaCategorias(this.myTile);

  @override
  _ListaCategoriasState createState() => _ListaCategoriasState();
}

class _ListaCategoriasState extends State<ListaCategorias> {
  @override
  Widget build(BuildContext context) {
    return _buildTiles(widget.myTile);
  }

  Widget _buildTiles(ItemCateg t) {
    return new CardtItemCateg(t);
  }
}

List<ItemCateg> listaCatPromo = <ItemCateg>[
  new ItemCateg(
      'Limpador Cloro PATO Natureza ', //nome
      'https://static.paodeacucar.com/img/uploads/1/99/549099.jpg',
      '500 ml',
      'Poupe R\$1,84',
      'R\$7,35',
      'R\$9,19'
      //descricao

      ),
  new ItemCateg(
      'Cerveja HEINEKEN Barril', //nome
      'https://static.paodeacucar.com/img/uploads/1/460/583460.png', //descricao
      '5 LT',
      'Poupe R\$19,91',
      'R\$69,99',
      'R\$89,90'),
  new ItemCateg(
      'Vinho Argentino Tinto NIETO BENJAMIN Select Cabernet', //nome
      'https://static.paodeacucar.com/img/uploads/1/385/586385.png', //descr
      '750 ml',
      'Poupe R\$30,00',
      'R\$69,99',
      'R\$99,99'),
  new ItemCateg(
      'Biscoitos Sortidos Cobertura Sabor Chocolate ', //nome
      'https://static.paodeacucar.com/img/uploads/1/854/610854.png', //descr
      '280 g',
      'Poupe R\$1,50',
      'R\$11,99',
      'R\$13,49'),
];

List<ItemCateg> listaCatFruteiraDados = <ItemCateg>[
  new ItemCateg(
      'Banana Caturra', //nome
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSqviblOVAB6XAPtZlw7TyrX9xv8Uo8FJtIUCU0oZtwT-kxI5g&usqp=CAU',
      'kg',
      'Poupe R\$0,60',
      'R\$2,24',
      'R\$2,84'
      //descricao

      ),
  new ItemCateg(
      'Cebola à Granel', //nome
      'https://casafiesta.fbitsstatic.net/img/p/cebola-kg-78030/231726.jpg?w=420&h=420&v=no-change', //descricao
      'kg',
      'Poupe R\$1,30',
      'R\$3,20',
      'R\$4,50'),
  new ItemCateg(
      'Tomate Italiano', //nome
      'https://www.infoescola.com/wp-content/uploads/2011/01/tomate_345187874.jpg', //descr
      'kg',
      '',
      'R\$2,84',
      '' //

      ),
];

List<ItemCateg> listaCatBebidasDados = <ItemCateg>[
  new ItemCateg(
    'Coca Cola 1 Lt', //nome
    'https://static.paodeacucar.com/img/uploads/1/628/554628.jpg', //descricao
    '1 LT',
    'Poupe R\$0,30',
    'R\$4,99',
    'R\$5,29',
  ),
  new ItemCateg(
      'Red Bull Energy Drink ', //nome
      'https://static.paodeacucar.com/img/uploads/1/924/522924.jpg', //descricao
      '250 ml',
      'Poupe R\$0,85',
      'R\$7,40',
      'R\$8,25'),
  new ItemCateg(
      'JW Red Label', //nome
      'https://static.paodeacucar.com/img/uploads/1/515/639515.jpg', //descricao
      '1 LT',
      'Poupe R\$26,09',
      'R\$79,90',
      'R\$105,99'),
];

List<ItemCateg> listaCatCarnesDados = <ItemCateg>[
  new ItemCateg(
      'Picanha Bovina', //nome
      'https://static.paodeacucar.com/img/uploads/1/44/653044.jpg', //descricao
      '1,2 kg',
      'Poupe R\$5,50',
      'R\$79,90',
      'R\$85,40'),
  new ItemCateg(
      'Alcatra em Bife', //nome
      'https://static.clubeextra.com.br/img/uploads/1/178/593178.png', //descricao
      '500 g',
      'Poupe R\$1,15',
      'R\$15,84',
      'R\$16,99'),
  new ItemCateg(
      'Frango Inteiro', //nome
      'https://static.clubeextra.com.br/img/uploads/1/300/618300.png', //descricao
      '1,3 kg',
      'Poupe R\$4,11',
      'R\$17,39',
      'R\$21,50'),
];

List<ItemCateg> listaCatCarnesDadosSugeridos = <ItemCateg>[
  new ItemCateg(
      'Cafeteira Expresso Dolce  Gusto', //nome
      'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
      'unidade',
      'Poupe R\$62,85',
      'R\$257,55',
      'R\$320,40'),
  new ItemCateg(
      'Cadeira de Praia Alta Alumínio', //nome
      'https://cdn.leroymerlin.com.br/products/cadeira_de_praia_aluminio_4_posicoes_azul_e_branca_84x54cm_89978693_0001_300x300.jpg', //descricao
      'unidade',
      'Poupe R\$30,00',
      'R\$139,90',
      'R\$169,90'),
  new ItemCateg(
      'Cerveja Stella Artois Pack', //nome
      'https://emporiodacerveja.vteximg.com.br/arquivos/ids/161260-1000-1000/stella1.jpg?v=636102552119900000', //descricao
      'kg',
      'Poupe R\$4,04',
      'R\$19,90',
      'R\$23,94'),
  new ItemCateg(
      'Carvao para churrasco Gourmet de Briquete - 5KG', //nome
      'https://images-submarino.b2w.io/produtos/01/00/img/469989/4/469989493_1GG.jpg', //descricao
      'kg',
      'Poupe R\$3,60',
      'R\$17,90',
      'R\$21,50'),
];
