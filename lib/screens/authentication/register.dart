import 'package:flutter/material.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/auth.dart';
import 'package:flutter_yemek_tarifi/screens/authentication/login.dart';
import 'package:flutter_yemek_tarifi/screens/home/homeScreen.dart';
import '../../widget.dart';

class register extends StatefulWidget {
  
 register(void Function() toggleView, {Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {

  bool isLoading = false;
  

  AuthService authService = new AuthService();

  final formKey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
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
       body: isLoading ? Container(
        child: Center(child: CircularProgressIndicator())
       ) :  SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
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
                                    builder: (context) => homeScreen()));
                          });
                        },
                  child: Container(
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
                      "Kayıt ol",
                      style: mediumTextStyle(),
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
                    Text("Hesabınız var mı? ",style: mediumTextStyle(),),
                    GestureDetector(
                        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => logIn(   
                              )));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("Giriş Yap",style: TextStyle(
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