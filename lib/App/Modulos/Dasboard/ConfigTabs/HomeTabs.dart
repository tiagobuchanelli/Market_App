import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabHome/Views/HomeTab.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabCategorias/Views/TabCategories.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabMenus/Views/TabMenus.dart';
import 'package:restaurant_app/App/Modulos/Dasboard/TabPedidos/Views/TabOrdens.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    TabCategories(),
    TabPedidos(),
    TabMenus()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_currentIndex, context),
      body: pages[_currentIndex],
      /*body: PageStorage(
        child: pages[_currentIndex],
        bucket: bucket,
      ),*/
    );
  }

  Widget _bottomNavigationBar(int selectedIndex, BuildContext context) =>
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor:
            Colors.black, //_retournColor(_currentIndex, context),
        unselectedItemColor: Colors.black26,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 2,
        backgroundColor: Colors.white,
        onTap: (int index) => setState(() => _currentIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.houseUser,
              size: 22,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Home'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.thList,
              size: 22,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Categorias'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.box,
              size: 22,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Pedidos'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cog,
              size: 22,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Opções'),
            ),
          ),
        ],
      );
}
