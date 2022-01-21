import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/providers/bodies.dart';
import 'package:sample_app/providers/body.dart';
import 'package:sample_app/screens/selection2.dart';

class SelectionScreen extends StatefulWidget {

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    // final products = Provider.of<Bodies>(context).items;
    // final product = Provider.of<Body>(context);

    return Scaffold(
      body: BodyList(),
      
    );
  }
}

class BodyList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final productData = Provider.of<Bodies>(context);
     final products =productData.items;

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
         value: products[index],
         child: List(),
         ));
  }
}

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final product = Provider.of<Body>(context);
    return GestureDetector(
      onTap: (){
          Navigator.of(context).pushNamed(Selection2.routeName,
                arguments: product.id);
      },
      child: ListTile(
        title: Text(product.title),
      ),
    );
  }
}