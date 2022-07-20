import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/models/recipes.dart';

import 'package:flutter_yemek_tarifi/screens/details/details_screen.dart';
import 'package:flutter_yemek_tarifi/screens/home/components/categories.dart';
import 'package:flutter_yemek_tarifi/screens/home/components/recipe_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Yemek Tarifleri",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: recipes.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemFood(
                    recipes: recipes[index],
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsScreen(
                                  recipes: recipes[index],
                                  ),
                                  )),
                  )),
        ))
      ],
    );
  }
}
