import '../dummy_data.dart';
import 'package:flutter/material.dart';
import '../Widgets/foodTile.dart';

class foodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final String title = routearg['title'];
    final String id = routearg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            print(categoryMeals[index].imageUrl);
            return foodTile(
              imageurl: categoryMeals[index].imageUrl,
              title: categoryMeals[index].title,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              id: categoryMeals[index].id,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
