import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/theme/theme-default.dart';
import 'package:restaurant_app/views/orders-tab/TabOrders_Closed.dart';
import 'package:restaurant_app/views/orders-tab/TabOrders_Open.dart';

class TabPedidos extends StatefulWidget {
  @override
  _TabPedidosState createState() => _TabPedidosState();
}

class _TabPedidosState extends State<TabPedidos> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppTheme().primaryColor,
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
    // TODO: implement initState

    //_controlFirstAccess();
    //final video = File('images/Intropet.mp4');
    print("passou da init state detalhes produto");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return new MaterialApp(
      //title: 'Pedidos',
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              color: AppTheme().primaryColor,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      labelPadding: EdgeInsets.only(bottom: 10),
                      tabs: [new Text("ABERTO"), new Text("ANTERIORES")],
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.black12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[new TabOrders_Open(), new TabOrders_Closed()],
          ),
        ),
      ),
    );
  }
}
