import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/providers/bodies.dart';
import 'package:sample_app/screens/selection3.dart';

class Selection2 extends StatelessWidget {
  static const routeName = "/sel-2";

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
          itemCount: loadedProduct.week.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
               Navigator.of(context).pushNamed(Selection3.routeName,
                arguments: loadedProduct.id);
            },
            child: ListTile(
              title: Text(loadedProduct.week[index]),
            ),
          ),
        ));
  }
}
