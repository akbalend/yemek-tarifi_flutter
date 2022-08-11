import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/login.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
       return const logIn();
    } else {
      return register(toggleView);
    }
  }
}