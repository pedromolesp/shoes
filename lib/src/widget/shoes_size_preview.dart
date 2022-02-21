import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/models/show_model.dart';
import 'package:shoes/src/pages/show_desc_page.dart';

class ShoeSizePreview extends StatelessWidget {
  final bool fullScreen;
  ShoeSizePreview({required this.fullScreen});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.fullScreen) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShowDescPage()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: this.fullScreen ? 5 : 30,
            vertical: this.fullScreen ? 5 : 0),
        child: Container(
          width: double.infinity,
          height: this.fullScreen ? 380 : 410,
          decoration: BoxDecoration(
            borderRadius: (!this.fullScreen)
                ? BorderRadius.circular(50)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
            color: Color(0xffFFcF53),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //zapato con sombra
              _ShadowShoe(),
              if (this.fullScreen)
                Positioned(
                    width: MediaQuery.of(context).size.width * 0.9,
                    bottom: 20,
                    child: Center(child: _SizeShoe()))
              //TODO: tallas
            ],
          ),
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    return Container(
      child: Stack(
        children: [
          Positioned(bottom: 30, right: 50, child: _Shadow()),
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Image(image: AssetImage(shoeModel.assetImage)),
          ),
        ],
      ),
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
    final shoeModel = Provider.of<ShoeModel>(context);
    return GestureDetector(
      onTap: () {
        final shoeModel = Provider.of<ShoeModel>(context, listen: false);
        shoeModel.setSize = this.number;
      },
      child: Container(
        width: 45,
        alignment: Alignment.center,
        child: Text(
          number.toString().replaceAll(".", ","),
          style: TextStyle(
              color:
                  shoeModel.size == number ? Colors.white : Color(0xffFFcF53),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        height: 45,
        decoration: BoxDecoration(
          color: shoeModel.size == number ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (shoeModel.size == number)
              BoxShadow(
                  offset: Offset(0.0, 5.0),
                  color: Color(0xffF1A23A).withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 2),
          ],
        ),
      ),
    );
  }
}
