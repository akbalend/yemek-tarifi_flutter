import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/models/recipes.dart';

class RecipeTitleWithImage extends StatelessWidget {
  const RecipeTitleWithImage({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final Recipe recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: recipes.size,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white), 
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset(recipes.image,
                fit: BoxFit.fill
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
