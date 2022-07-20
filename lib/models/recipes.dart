import 'package:flutter/material.dart';

class Recipe {
  final String image, title, description, size;
  final int id;
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
      size: "3-4 kişilik",
      description: "tarif",
      image: "assets/images/tarif1.jpg",
      color: Color.fromARGB(255, 222, 123, 80)),
      Recipe(
      id: 2,
      title: "Patlıcan Kapama",
      size: "3-4 kişilik",
      description: "tarif",
      image: "assets/images/tarif2.jpg",
      color: Color.fromARGB(255, 244, 236, 97)),
      Recipe(
      id: 3,
      title: "Kavurmalı Tost",
      size: "1-2 kişilik",
      description: "tarif",
      image: "assets/images/tarif3.jpg",
      color: Color.fromARGB(255, 233, 180, 94)),
      Recipe(
      id: 4,
      title: "Sodalı Börek",
      size: "3.4 kişilik",
      description: "tarif",
      image: "assets/images/tarif4.jpg",
      color: const Color(0xFF3D82AE)),
      Recipe(
      id: 5,
      title: "Yoğurt Çorbası",
      size: "3-4 kişilik",
      description: "tarif",
      image: "assets/images/tarif5.jpg",
      color: Color.fromARGB(255, 232, 211, 110)),
      Recipe(
      id: 6,
      title: "Sulu Patates",
      size: "3-4 kişilik",
      description: "tarif",
      image: "assets/images/tarif6.jpg",
      color: Color.fromARGB(255, 155, 212, 248)),
      Recipe(
      id: 7,
      title: "Köfteli Karnabahar",
      size: "3-4 kişilik",
      description: "tarif",
      image: "assets/images/tarif7.jpg",
      color: Color.fromARGB(255, 199, 192, 192)),

];