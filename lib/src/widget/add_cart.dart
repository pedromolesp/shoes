import 'package:flutter/material.dart';
import 'package:shoes/src/widget/custom_widget.dart';

class AddCartButton extends StatelessWidget {
  final double quantity;
  AddCartButton({required this.quantity});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              '\$$quantity',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CustomButton(
              "ADD TO CART",
              alto: 120,
              ancho: 40,
              color: Colors.orange,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
