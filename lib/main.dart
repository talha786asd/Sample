import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/providers/bodies.dart';
import 'package:sample_app/screens/selection2.dart';
import 'package:sample_app/screens/selection3.dart';
import 'package:sample_app/screens/selection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value :Bodies()
        ),
      ],
      child: MaterialApp(
       
        debugShowCheckedModeBanner: false,
       
        home: SelectionScreen(),
        routes: {
              Selection2.routeName: (ctx) => Selection2(),
              Selection3.routeName: (ctx) => Selection3(),

        },
      
      ),
    );
  }
}
