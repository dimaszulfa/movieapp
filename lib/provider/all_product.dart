import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/product_models.dart';

class AllProduct extends ChangeNotifier {
  static final faker = Faker();
  final List<ProductModels> _allDataProduct = List.generate(
      20,
      (index) => ProductModels(
          name: faker.person.name(), description: faker.lorem.sentence()));

  List<ProductModels> get allProduct => [..._allDataProduct];

  // void addData(){
  //   _allDataProduct = _allDataProduct.add()
  // }
}
