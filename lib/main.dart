import 'package:flutter/material.dart';
// import 'package:shoes/src/pages/shoe_page.dart';
import 'package:shoes/src/pages/show_desc_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoes App',
        home: ShowDescPage()
        // ShoePage(),

        );
  }
}
