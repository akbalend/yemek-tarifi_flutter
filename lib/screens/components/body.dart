import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
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
        Column(
          children: [
            Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset("assets/images/tarif1.jpg",),
            ),
            
          ],
        )
      ],
    );
  }
}

