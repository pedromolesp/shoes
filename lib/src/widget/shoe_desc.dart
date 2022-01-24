import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String desciption;
  ShoeDescription({required this.title, required this.desciption});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            this.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Text(
            this.desciption,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black54,
                height: 1.6),
          ),
        ],
      ),
    );
  }
}
