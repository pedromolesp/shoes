import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double alto;
  final double ancho;
  final Color color;
  CustomButton(this.text,
      {required this.alto, required this.ancho, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho,
      height: alto,
      decoration: BoxDecoration(
        color: color,
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
