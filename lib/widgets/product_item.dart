import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trail/screens/product_detail.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  //
  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child:
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(ProductDetail.routeName, arguments: product.id);
              },
                child: Image.network(product.imageUrl, fit: BoxFit.cover)),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
