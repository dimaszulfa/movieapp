import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieapp/provider/all_product.dart';
import 'package:provider/provider.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final getName = ModalRoute.of(context)?.settings.arguments as String;
    final movie = Provider.of<AllProduct>(context)
        .allProduct
        .firstWhere((data) => data.name == getName);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo"),
      ),
      body: Text("${movie.name}"),
    );
  }
}
