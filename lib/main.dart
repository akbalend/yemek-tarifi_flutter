import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/authenticate.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/login.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/register.dart';
import 'package:flutter_yemek_tarifi/screens/home/homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        )
      ),
      home: homeScreen(),
    );
  }
}

