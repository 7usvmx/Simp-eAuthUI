import 'package:flutter/material.dart';

class ExTailers extends StatelessWidget {
  final icon;
  final String exTitle;
  final String exDetails;
  final color;

  const ExTailers({
    super.key,
    required this.icon,
    required this.color,
    required this.exTitle,
    required this.exDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[50], borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(15),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            padding: EdgeInsets.all(15),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          title: Text(
            exTitle,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text(exDetails),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
