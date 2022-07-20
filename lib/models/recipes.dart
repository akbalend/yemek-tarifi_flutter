import 'package:flutter/material.dart';

class Recipe {
  final String image, title, description;
  final int size, id;
  final Color color;
  Recipe({
    required this.id,
    required this.size,
    required this.title,
    required this.description,
    required this.color,
    required this.image,
  });
}

List<Recipe> recipes = [
  Recipe(
      id: 1,
      title: "Tavuk Sote",
      size: 234,
      description: "tarif",
      image: "assets/images/tarif1.jpg",
      color: const Color(0xFF3D82AE)),
      Recipe(
      id: 2,
      title: "Patlıcan Kapama",
      size: 234,
      description: "tarif",
      image: "assets/images/tarif2.jpg",
      color: const Color(0xFF3D82AE)),
      Recipe(
      id: 3,
      title: "Kavurmalı Tost",
      size: 234,
      description: "tarif",
      image: "assets/images/tarif3.jpg",
      color: const Color(0xFF3D82AE)),

];