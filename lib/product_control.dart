import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text('Add Product'),
      onPressed: () {
        addProduct({'title': 'Chocolate 23', 'image': 'assets/food.jpg'});
      },
    );
  }
}
