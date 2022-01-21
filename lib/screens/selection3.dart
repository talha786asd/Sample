import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/providers/bodies.dart';

class Selection3 extends StatelessWidget {
  static const routeName = "/sel-3";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Bodies>(context, listen: false).findById(productId);
    return Scaffold(
        appBar: AppBar(
          title: Text(loadedProduct.title),
        ),
        body: ListView.builder(
          itemCount: loadedProduct.categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {},
            child: ListTile(
              title: Text(loadedProduct.categories[index]),
            ),
          ),
        ));
  }
}
