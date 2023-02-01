import 'package:flutter/material.dart';

class ProductModels with ChangeNotifier {
  final String name;
  final String description;
  bool isFavorite;

  ProductModels(
      {required this.name, this.isFavorite = false, required this.description});
}
