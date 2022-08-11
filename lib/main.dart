import 'package:camera/camera.dart';
import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/authenticate.dart';
import 'package:flutter_yemek_tarifi/screens/camera/cameraScreen.dart';
import 'package:flutter_yemek_tarifi/screens/home/homeScreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  final cameras = await availableCameras();
  runApp(MyApp(cameras: cameras));
}


class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
      )),
      home: homeScreen(cameras: cameras),
    );
  }
}
