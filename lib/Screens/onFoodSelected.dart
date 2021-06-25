import 'package:BonAppetit/models/mealsData.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class onFoodSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context).settings.arguments as String;
    final SelectedFoodDetails = DUMMY_MEALS.firstWhere((meal) => id == meal.id);
    return Scaffold(
      appBar: AppBar(title: Text(id)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 350,
              child: Image.network(
                SelectedFoodDetails.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  " Ingrediants Required ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    width: double.infinity,
                    child: Card(
                      elevation: 20,
                      child: Text(
                        SelectedFoodDetails.ingredients[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.blue[100],
                    ),
                  );
                },
                itemCount: SelectedFoodDetails.ingredients.length,
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  " Steps Required ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${index + 1}'),
                      ),
                      title: Text(
                        '${SelectedFoodDetails.steps[index]}',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ]);
                },
                itemCount: SelectedFoodDetails.ingredients.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
