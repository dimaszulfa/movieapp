import 'dart:developer';
import 'package:faker/faker.dart';

import 'grid_item.dart';

import 'package:flutter/material.dart';

import 'models/product_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movie App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final List<ProductModels> dataList = List.generate(
        20,
        (index) => ProductModels(
            name: faker.person.name(), description: faker.lorem.sentence()));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie App"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: dataList.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return GridItem(dataList[index].name, dataList[index].isFavorite,
              dataList[index].description, index);
        },
      ),
    );
  }
}
