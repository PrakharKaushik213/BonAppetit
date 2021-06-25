import 'package:flutter/material.dart';

enum Affordability { Affordable, Pricey, Luxurious }
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> steps;
  final List<String> ingredients;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    @required this.id,
    @required this.title,
    @required this.categories,
    @required this.duration,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.steps,
    @required this.affordability,
    @required this.complexity,
  });
}
