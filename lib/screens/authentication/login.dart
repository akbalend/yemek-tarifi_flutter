import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/auth.dart';
import 'package:flutter_yemek_tarifi/widget.dart';

class logIn extends StatefulWidget {
  final Function toggle;
  logIn(this.toggle);
  
   AuthService _authService = AuthService();
 // logIn(void Function() toggleView, {Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Giriş Yapınız",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("email"),
                ),
                TextField(
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("password"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Şifremi unuttum",
                      style: simpleTextStyle(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC)
                      ]),
                      borderRadius: BorderRadius.circular(27)),
                  child: Text(
                    "Giriş Yap",
                    style: mediumTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(27)),
                  child: Text(
                    "Google ile Bağlan",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hesabınız yok mu? ",style: mediumTextStyle(),),
                    GestureDetector(
                      onTap: () {
                        widget.toggle();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("Kayıt ol",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          decoration: TextDecoration.underline
                        ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
