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
          const Text(
            "Tavuk Sote Tarifi",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            recipes.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          //SizedBox(height: kDefaultPaddin),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: ("\n")),
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
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset(recipes.image,
                fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
