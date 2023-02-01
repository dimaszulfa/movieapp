import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:movieapp/models/product_models.dart';

class GridItem extends StatelessWidget {
  final String name;
  final bool isFavorite;
  final String description;
  final int index;

  GridItem(this.name, this.isFavorite, this.description, this.index);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
          backgroundColor: Colors.black.withOpacity(0.2),
          title: Text(name),
          trailing: IconButton(
              onPressed: () => log("clicked"),
              icon: const Icon(Icons.favorite_border))),
      child: Image.network(
        "https://picsum.photos/id/$index/200/300",
        fit: BoxFit.cover,
      ),
    );
  }
}
