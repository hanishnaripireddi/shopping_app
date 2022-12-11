import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trail/providers/products_providers.dart';
import 'package:trail/widgets/product_item.dart';

import '../models/product.dart';
import '../providers/products_providers.dart';

class ProductGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, i) => ChangeNotifierProvider(
          create: (c)=>products[i],
          child: ProductItem(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10)
    );
  }
}