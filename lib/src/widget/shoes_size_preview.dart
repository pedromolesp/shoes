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
            _ShadowShoe(),
            _SizeShoe()
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
    return Stack(
      children: [
        Positioned(bottom: 20, right: 50, child: _Shadow()),
        Padding(
          padding: EdgeInsets.all(50.0),
          child: Image(image: AssetImage("assets/imgs/azul.png")),
        ),
      ],
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}

class _SizeShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _SizeShoeContainer(7),
          _SizeShoeContainer(7.5),
          _SizeShoeContainer(8),
          _SizeShoeContainer(8.5),
          _SizeShoeContainer(9),
          _SizeShoeContainer(9.5),
        ],
      ),
    );
  }
}

class _SizeShoeContainer extends StatelessWidget {
  final double number;
  _SizeShoeContainer(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      alignment: Alignment.center,
      child: Text(
        number.toString().replaceAll(".", ","),
        style: TextStyle(
            color: number == 9 ? Colors.white : Color(0xffFFcF53),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      height: 45,
      decoration: BoxDecoration(
        color: number == 9 ? Color(0xffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (number == 9)
            BoxShadow(
                offset: Offset(0.0, 5.0),
                color: Color(0xffF1A23A).withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 2),
        ],
      ),
    );
  }
}
