import 'package:flutter/material.dart';

class ProductModels with ChangeNotifier {
  final String name;
  final String description;
  final String image;
  bool isFavorite;

  ProductModels(
      {required this.name,
      this.isFavorite = false,
      required this.description,
      required this.image});

  void setStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
