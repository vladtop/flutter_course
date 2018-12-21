import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;

  Products(this.products);

  Widget _buildProductItem(context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            products[index]['title'], products[index]['image']),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProducts(List<Map<String, String>> _productsList) {
    Widget _result = Center(
      child: Text('No Products found.'),
    );
    if (_productsList.length > 0) {
      _result = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProducts(products);
  }
}
