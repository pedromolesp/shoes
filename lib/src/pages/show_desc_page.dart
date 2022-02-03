import 'package:flutter/material.dart';
import 'package:shoes/src/widget/custom_widget.dart';

class ShowDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ShoeSizePreview(fullScreen: true),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ShoeDescription(
                    title: 'Nike Air Max 720',
                    desciption:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
