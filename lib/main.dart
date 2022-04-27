import 'package:flutter/material.dart';
import 'package:shop_spp/Home%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      home: MyHomePage(),
    );
  }
}
