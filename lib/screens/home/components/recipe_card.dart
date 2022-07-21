import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/models/recipes.dart';

class ItemFood extends StatelessWidget {
  final Recipe? recipes;
  final void Function()? onPressed;
  const ItemFood({
    Key? key,
    this.recipes,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
          padding: const EdgeInsets.all(kDefaultPaddin /2),
          
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(recipes!.image), 
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              recipes!.title,
            style: const TextStyle(color: kTextColor),
            ),
          ),
          Text(recipes!.size, style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

