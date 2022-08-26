import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/Lovepik_com-450078713-Dad T Shirt Design.png",
    title: "T-SHIRTS & POLOS FOR MEN",
    price: 599,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/laptop-png-6778.png",
    title: "HP 15 GAMING LAPTOP",
    price: 54990,
  ),
  Product(
    image: "assets/images/SeekPng.com_sofa-png-images_10099862.png",
    title: "DR.SMITH SOFA 2 SEATER",
    price: 8999,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/Dettol Original Liquid Hand Wash.png",
    title: "DETTOL ANTISEPTIC LIQUID",
    price: 331,
    bgColor: const Color(0xFFEEEEED),
  ),
];
