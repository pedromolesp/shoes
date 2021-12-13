import 'package:flutter/material.dart';
import 'package:shoes/src/widget/custom_appbar.dart';
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
          ShoeSizePreview()
        ],
      ),
    );
  }
}
