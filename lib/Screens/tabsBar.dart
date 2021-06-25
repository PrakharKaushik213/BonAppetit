import 'package:BonAppetit/Screens/favourites.dart';
import 'package:flutter/material.dart';
import './categoriesActivity.dart';

class tabsBar extends StatefulWidget {
  @override
  _tabsBarState createState() => _tabsBarState();
}

class _tabsBarState extends State<tabsBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('BonAppetit'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favourites',
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            categories(),
            favourites(),
          ],
        ),
      ),
    );
  }
}
