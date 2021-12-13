import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xffFFcF53),
        ),
        child: Column(
          children: [
            //zapato con sombra
            _ShadowShoe()
            //TODO: tallas
          ],
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [Image(image: AssetImage("assets/imgs/azul.png"))],
      ),
    );
  }
}
