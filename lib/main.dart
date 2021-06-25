import 'dart:ui';
import 'package:BonAppetit/Screens/onFoodSelected.dart';
import 'package:flutter/material.dart';

import './Screens/categoriesActivity.dart';
import './Screens/foodDetails.dart';
import './Widgets/categoryTile.dart';
import './Widgets/foodTile.dart';
import './Screens/tabsBar.dart';

void main() {
  runApp(MyWholeApp());
}

class MyWholeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bon Appetit',
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            accentColor: Colors.red,
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                    title: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                ))),
        home: tabsBar(),
        routes: {
          //  '/': (context) => tabsBar(),
          categorytile.routeName: (context) => foodDetails(),
          foodTile.routeName: (context) => onFoodSelected(),
        });
  }
}
