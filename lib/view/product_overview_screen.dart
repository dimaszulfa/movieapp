import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../grid_item.dart';
import '../models/product_models.dart';
import '../provider/all_product.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({
    super.key,
    required this.dataList,
  });

  final List<ProductModels> dataList;
  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<AllProduct>(context);
    final movie = movies.allProduct;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: dataList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        return ChangeNotifierProvider(
          // create: (context) => AllProduct(),
          // child: GridItem(dataList[index].name, dataList[index].isFavorite,
          //     dataList[index].description, index),

          create: (context) => movie[index],
          child: GridItem(),
        );
      },
    );
  }
}
