import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String _title;
  final String _imageUrl;

  ProductPage(this._title, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(_imageUrl),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(_title),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              child: Text('BACK'),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
