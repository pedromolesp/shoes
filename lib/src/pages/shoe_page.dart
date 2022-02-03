import 'package:flutter/material.dart';
import 'package:shoes/src/widget/add_cart.dart';
import 'package:shoes/src/widget/custom_appbar.dart';
import 'package:shoes/src/widget/custom_widget.dart';
import 'package:shoes/src/widget/shoes_size_preview.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppBar("Para ti"),
      body: Column(
        children: [
          CustomAppBar("For You"),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoeSizePreview(
                    fullScreen: true,
                  ),
                  ShoeDescription(
                      title: 'Nike Air Max 720',
                      desciption:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                ],
              ),
            ),
          ),
          AddCartButton(quantity: 180)
        ],
      ),
    );
  }
}
