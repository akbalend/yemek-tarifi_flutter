import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/screens/home/components/body.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body()
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
            color: kTextColor,
            ),
            onPressed: () {},
            ),
            IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: kTextColor,
            )),
            const SizedBox(width: kDefaultPaddin /2,)
          ],
      );
  }
}