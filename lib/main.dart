import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/models/show_model.dart';
import 'package:shoes/src/pages/shoe_page.dart';

void main() {
  return runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoeModel())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      home: ShoePage(),
      // ShowDescPage()
    );
  }
}
