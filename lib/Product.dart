import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  final String? image, title;
  final int? price, id;
  final Color? color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      image: "image/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 550,
      image: "image/bag_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 789,
      image: "image/bag_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 326,
      image: "image/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 879,
      image: "image/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 456,
    image: "image/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];
List<String> categories = [
  "Hand Bag",
  "Jewellery",
  "Footwear",
  "Dresses",
  'T-Shirts',
  'Shirts',
  'Wallets',
  'Watches'
];