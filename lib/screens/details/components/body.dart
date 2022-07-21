import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/models/recipes.dart';
import 'package:flutter_yemek_tarifi/screens/details/components/recipe_title_with_image.dart';

class Body extends StatelessWidget {
  final Recipe recipes;

  const Body({Key? key, required this.recipes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.05,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tarifi:",style: Theme.of(context)
                          .textTheme
                          .headline6!,

                          ),
                      Text(
                        recipes.description,
                        style: const TextStyle(height: 1.5),
                      ),
                    ],
                  ),
                ),
                RecipeTitleWithImage(recipes: recipes)
              ],
            ),
          )
        ],
      ),
    );
  }
}
