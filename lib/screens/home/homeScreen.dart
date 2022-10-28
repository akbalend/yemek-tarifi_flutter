// ignore_for_file: file_names

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_yemek_tarifi/constants.dart';
import 'package:flutter_yemek_tarifi/screens/camera/cameraScreen.dart';
import 'package:flutter_yemek_tarifi/screens/home/components/body.dart';

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
  const homeScreen({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: const Body(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  CameraScreen(cameras: cameras),
            ));
            },
            backgroundColor: Colors.red.shade400,
            hoverColor: Colors.blue,
            child: Icon(Icons.camera, color: Colors.grey.shade900),
          ),
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
              Icons.exit_to_app,
              color: kTextColor,
            )),
            const SizedBox(width: kDefaultPaddin /2,),
          ],
      );
  }
}