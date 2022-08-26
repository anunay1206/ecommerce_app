import 'package:flutter/material.dart';

class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/dress.svg",
    title: "Fashion",
  ),
  Category(
    icon: "assets/icons/laptop-svgrepo-com.svg",
    title: "Electronics",
  ),
  Category(
    icon: "assets/icons/chairs-furniture-svgrepo-com.svg",
    title: "Furniture",
  ),
  Category(
    icon: "assets/icons/pharmacy-svgrepo-com.svg",
    title: "Pharmacy",
  ),
];
