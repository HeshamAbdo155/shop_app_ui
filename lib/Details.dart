import 'package:flutter/material.dart';
import 'package:shop_spp/Product.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState(product);
}

class _DetailsScreenState extends State<DetailsScreen> {
  int counter = 1;
  final Product product;

  _DetailsScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 250),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 55.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Color'),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    color: Colors.indigo,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 100.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Text('Size'),
                              ),
                              Text(
                                '12 Cm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (counter > 1) counter--;
                            });
                          },
                          child: const Icon(Icons.remove),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('$counter'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (counter < 11) counter++;
                            });
                          },
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Icon(Icons.add_shopping_cart),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, right: 70.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '          BUY NOW          ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product.title}',
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Price',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            '${product.price}\$',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                          height: 200, child: Image.asset('${product.image}')),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
