import 'package:flutter/material.dart';

class TabOrders_Open extends StatefulWidget {
  @override
  _TabOrders_OpenState createState() => _TabOrders_OpenState();
}

class _TabOrders_OpenState extends State<TabOrders_Open> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[50],
      child: Center(child: Text('Você ainda não tem nenhum pedido realizado!')),
    );
  }
}
