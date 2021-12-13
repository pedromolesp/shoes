import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this.texto);
  final String texto;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                texto,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Icon(Icons.search, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
