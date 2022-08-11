// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'dart:io';

// ignore: camel_case_types
class galleryScreen extends StatelessWidget {
  final List<File> images;
  const galleryScreen({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: images
            .map((image) => Image.file(image, fit: BoxFit.cover))
            .toList(),
      ),
    );
  }
}