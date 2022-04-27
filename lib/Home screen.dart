import 'package:flutter/material.dart';
import 'package:shop_spp/Details.dart';
import 'dart:core';
import 'package:shop_spp/Product.dart';
import 'package:shop_spp/item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: const [
          Icon(Icons.search, color: Colors.black),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 45.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          categories[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.black26),
                        ),
                        Container(
                            height: 2,
                            width: 30,
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.transparent)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 1,
              ),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: products[index])));
                },
                child: Item(
                  product: products[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
