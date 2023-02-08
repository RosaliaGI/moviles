import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final String day;
  final String places;
  final String imgs;

  ItemActividad(
      {super.key, 
      required this.day, 
      required this.places, 
      required this.imgs});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.network('$imgs'),
          ),
          Text("$day", style: TextStyle(fontSize: 11)),
          Text("$places"),
        ],
      ),
    );
  }
}
