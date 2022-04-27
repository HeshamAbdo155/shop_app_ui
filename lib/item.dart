import 'package:flutter/material.dart';
import 'package:shop_spp/Product.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset('${product.image}'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, top: 5.0),
            child: Text(
              '${product.title}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Text('${product.price}\$'),
          ),
        ],
      ),
    );
  }
}
