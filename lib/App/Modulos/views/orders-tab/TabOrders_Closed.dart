import 'package:flutter/material.dart';

class TabOrders_Closed extends StatefulWidget {
  @override
  _TabOrders_ClosedState createState() => _TabOrders_ClosedState();
}

class _TabOrders_ClosedState extends State<TabOrders_Closed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[50],
      child: Center(
        child: Text('Você ainda não tem nenhum pedido realizado!'),
      ),
    );
  }
}
