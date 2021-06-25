import 'package:BonAppetit/models/mealsData.dart';
import 'package:BonAppetit/Screens/onFoodSelected.dart';
import 'package:flutter/material.dart';

class foodTile extends StatelessWidget {
  static const routeName = 'onFoodSelected';

  final String imageurl;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String id;

  foodTile({
    @required this.imageurl,
    this.title,
    this.affordability,
    this.complexity,
    this.duration,
    this.id,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Simple:
        return 'Simple';
        break;
      default:
        return 'UnKnown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Luxurious:
        return 'Luxurious';
      case Affordability.Pricey:
        return 'Pricey';
      default:
        return 'UnKnown';
    }
  }

  void onFoodSelected(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    print('build ran ');
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => onFoodSelected(context),
      child: Card(
          elevation: 10,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageurl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Container(
                  width: 350,
                  color: Colors.black54,
                  child: Text(
                    title,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5,
                      ),
                      Text('$duration mins'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Complexity: $complexityText'),
                    ],
                  )
                ],
              ),
            )
          ])),
    );
  }
}
