import 'package:flutter/material.dart';
import 'package:sample_app/providers/body.dart';

class Bodies with ChangeNotifier {
  final List<Body> _items = [
    Body(
      id: "p1",
      title: "Full Body",
      week: [
      "week1",
      "week2",
      "week3",
      "week4"
    ],
     categories: [
      "Fullbody 1",
      "Rest",
      "Rest",
      "Fullbody 2",
      "Rest",
      "Rest"
    ]),
    Body(id: "p2", title: "Upper/LowerBody", week: [
      "week1",
      "week2",
      "week3",
      "week4"
    ], categories: [
      "Upper 1",
      "Rest",
      "Lower 1",
      "Rest",
      "Upper 2",
      "Rest",
      "Lower 2"
    ]),
    Body(id: "p3", title: "Push Pull  Legs", week: [
      "week1",
      "week2",
      "week3",
      "week4"
    ], categories: [
      "Push 1",
      "Pull 1",
      "Rest",
      "Arms",
      "Push 2",
      "Rest",
      "Pull 2",
      "Legs 2",
      "Rest",
      "Arms",
      "Repeat"
    ]),
  ];
  List<Body> get items {
    return [..._items];
  }

  Body findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
