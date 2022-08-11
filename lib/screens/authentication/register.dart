import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/auth.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/login.dart';
import 'package:flutter_yemek_tarifi/screens/home/homeScreen.dart';
import '../../widget.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  
 const register(void Function() toggleView, {Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {

  bool isLoading = false;
  

  // ignore: unnecessary_new
  AuthService authService = new AuthService();

  final formKey = GlobalKey<FormState>();
  // ignore: unnecessary_new
  TextEditingController userNameTextEditingController = new TextEditingController();
  // ignore: unnecessary_new
  TextEditingController emailTextEditingController = new TextEditingController();
  // ignore: unnecessary_new
  TextEditingController passwordTextEditingController = new TextEditingController();

  signUp(){
    if(formKey.currentState!.validate()){
      setState(() {
        isLoading = true;
      });
      
    }
  }



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kayıt Ol",
          style: TextStyle(color: Colors.black),
        ),
      ),
       // ignore: avoid_unnecessary_containers
       body: isLoading ? Container(
        child: const Center(child: CircularProgressIndicator())
       ) :  SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               Form(
                key: formKey,
                 child: Column(
                  children: [
                     TextFormField(
                      validator: (val){
                      return val!.isEmpty || val.length < 2 ? "Bu kullanıcı adını alamazsınız" : null;
                      },
                    controller: userNameTextEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("username"),
                  ),
                  TextFormField(
                    validator: (val){
                      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ?
                          null : "Eposta adresi giriniz"; 
                    },
                    controller: emailTextEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("email"),
                  ),
                  TextFormField(
                    obscureText: true, 
                    validator: (val) {
                      return val!.length > 6 ? null : "6 haneden uzun şifre seçiniz";
                    },
                    controller: passwordTextEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("password"),
                  ),
                  ],
                 ),
               ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Şifremi unuttum",
                      style: simpleTextStyle(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                          authService
                              .createPerson(
                                  userNameTextEditingController.text,
                                  emailTextEditingController.text,
                                  passwordTextEditingController.text)
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const homeScreen(cameras: [],)));
                          });
                        },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xff007EF4),
                          Color(0xff2A75BC)
                        ]),
                        borderRadius: BorderRadius.circular(27)),
                    child: Text(
                      "Kayıt ol",
                      style: mediumTextStyle(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(27)),
                  child: const Text(
                    "Google ile Bağlan",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hesabınız var mı? ",style: mediumTextStyle(),),
                    GestureDetector(
                        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const logIn(   
                              )));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text("Giriş Yap",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          decoration: TextDecoration.underline
                        ),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}