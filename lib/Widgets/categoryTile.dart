import 'package:flutter/material.dart';

class categorytile extends StatelessWidget {
  static const routeName = 'foodDetails';
  final String title;
  final Color color;
  final String id;
  categorytile({@required this.title, @required this.color, this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        routeName,
        arguments: {
          'title': title,
          'id': id,
        },
      ),
      splashColor: color,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
