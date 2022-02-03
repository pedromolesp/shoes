import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
