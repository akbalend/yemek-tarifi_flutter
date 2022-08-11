import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import '../../models/recipes.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.recipes}) : super(key: key);
  final Recipe recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: recipes.color,
      appBar: buildAppBar(context),
      body: Body(recipes: recipes,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(recipes.title),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg',
        color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions:[
        IconButton(
         onPressed: () {},
         icon: SvgPicture.asset("assets/icons/heart.svg"),
        ),
        const SizedBox(width: kDefaultPaddin /2)
      ],
    );
  }
}
