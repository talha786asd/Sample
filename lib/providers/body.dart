




import 'package:flutter/material.dart';

class Body with ChangeNotifier {
  String id;
  String title;
  List<String> week; 
  List<String> categories;




  Body({required this.id, required this.title, required this.week, required this.categories});
}
