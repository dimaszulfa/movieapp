import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:movieapp/models/product_models.dart';
import 'package:movieapp/provider/all_product.dart';
import 'package:movieapp/routes/routes.dart';
import 'package:movieapp/view/movie_detail.dart';
import 'package:provider/provider.dart';

class GridItem extends StatelessWidget {
  final String name;
  final bool isFavorite;
  final String description;
  final int index;

  GridItem(this.name, this.isFavorite, this.description, this.index);
  @override
  Widget build(BuildContext context) {
    var snackBar = SnackBar(content: Text("U Clicked $name"));
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: () {
          // log("$name di klik");
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return
          //     AlertDialog(
          //       title: Text("$name"),
          //       content: Text("$description"),
          //     );
          //   },
          // );
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => const MovieDetail())); //apabila tidak menginisiasi routes di home menggnakan seperti ini
          Navigator.of(context).pushNamed(Routes.routeDetail, arguments: name);
          // Navigator.pop(context,
          //     MaterialPageRoute(builder: (context) => const MovieDetail()));
        },
        child: GridTile(
          footer: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.2),
              title: Text(name),
              trailing: IconButton(
                  onPressed: () {
                    log("clicked");
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: const Icon(Icons.favorite_border))),
          child: Image.network(
            "https://picsum.photos/id/$index/200/300",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
