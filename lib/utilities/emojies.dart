import 'package:flutter/material.dart';

class EmoIconFace extends StatelessWidget {
  final String emoFace;

  const EmoIconFace({super.key, required this.emoFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue[500]),
      padding: EdgeInsets.all(15),
      child: Text(
        emoFace,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
