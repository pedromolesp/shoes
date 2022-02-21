import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/helpers/helpers.dart';
import 'package:shoes/models/show_model.dart';
import 'package:shoes/src/widget/custom_widget.dart';

class ShowDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    camnbiarStatusLight();

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Hero(tag: "showpreview", child: ShoeSizePreview(fullScreen: true)),
            Positioned(
              top: 80,
              child: FloatingActionButton(
                onPressed: () {
                  camnbiarStatusDark();

                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 60,
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                highlightElevation: 0,
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ShoeDescription(
                    title: 'Nike Air Max 720',
                    desciption:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                _CostAndBuynow(),
                _ColoresAndMore(),
                _ButtonsLikeCartSettings()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class _ButtonsLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonShadow(
            icon: Icon(
              Icons.star,
              color: Colors.red,
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonShadow extends StatelessWidget {
  final Icon icon;
  const _ButtonShadow({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ],
          color: Colors.white),
      child: icon,
    );
  }
}

class _ColoresAndMore extends StatelessWidget {
  const _ColoresAndMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                left: 90,
                child: _ButtonColor(
                  4,
                  "assets/imgs/verde.png",
                  color: Color(0xffC6D642),
                ),
              ),
              Positioned(
                left: 60,
                child: _ButtonColor(
                  3,
                  "assets/imgs/amarillo.png",
                  color: Color(0xffFFAD29),
                ),
              ),
              Positioned(
                left: 30,
                child: _ButtonColor(
                  2,
                  "assets/imgs/azul.png",
                  color: Color(0xff2099F1),
                ),
              ),
              _ButtonColor(
                1,
                "assets/imgs/negro.png",
                color: Color(0xff364D56),
              ),
            ],
          )),
          CustomButton(
            "More related items",
            alto: 30,
            ancho: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String urlImage;
  _ButtonColor(this.index, this.urlImage, {required this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final showModel = Provider.of<ShoeModel>(context, listen: false);
        showModel.assetImage = this.urlImage;
      },
      child: FadeInLeft(
        duration: Duration(milliseconds: 300),
        delay: Duration(milliseconds: index * 200),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class _CostAndBuynow extends StatelessWidget {
  const _CostAndBuynow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$180.0",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Bounce(
            delay: Duration(seconds: 1),
            from: 8,
            child: CustomButton(
              "Buy now",
              alto: 40,
              ancho: 120,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
