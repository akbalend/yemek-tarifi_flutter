import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/models/recipes.dart';
import 'package:flutter_yemek_tarifi/screens/components/categories.dart';

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
            itemBuilder: (context, index) => 
                  ItemFood(recipes: recipes[index],),),
          ))

      ],
    );
  }
}

class ItemFood extends StatelessWidget {
  final Recipe? recipes;
  final Function? press;
  const ItemFood({
    Key? key,
    this.recipes,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
        padding: const EdgeInsets.all(kDefaultPaddin),
       // height: 180,
       // width: 160,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset("assets/images/tarif1.jpg" ),

        
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            "Tavuk Sote", 
          style: TextStyle(color: kTextColor),
          ),
        ),
        const Text("4-5 Porsiyon", style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

