import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/auth.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/register.dart';
import 'package:flutter_yemek_tarifi/screens/home/homeScreen.dart';
import 'package:flutter_yemek_tarifi/widget.dart';

class logIn extends StatefulWidget {

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {

  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  AuthService authService = new AuthService();
  
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
                TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Please Enter Correct Email";
                          },
                          controller: emailTextEditingController,
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration("email"),
                        ),
                TextFormField(
                          obscureText: true,
                          validator: (val) {
                            return val!.length > 6
                                ? null
                                : "En az 6 haneli şifre giriniz";
                          },
                          style: simpleTextStyle(),
                          controller: passwordTextEditingController,
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
                  height: 16,
                ),
                     InkWell(
                    onTap: () {
                    authService
                          .signIn(
                              emailTextEditingController.text, passwordTextEditingController.text)
                          .then((value) {
                        return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeScreen()));
                      });
                    }, 
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff007EF4),
                              const Color(0xff2A75BC)
                            ],
                          )),
                      width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Giriş Yap",
                    style: mediumTextStyle(),
                    textAlign: TextAlign.center,
                  ),
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
                    InkWell(
                      onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => register(() {   
                              },)));
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
