import 'package:flutter/material.dart';
import 'package:class_information_system/welcome/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Login(),
      ),
      debugShowCheckedModeBanner: false,
    ));
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              color: const Color(0xff4341aa),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: TextField(
                    onChanged: (val) {},
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "UTM ID",
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: TextField(
                    onChanged: (val) {},
                    obscureText: true,
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "Password",
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: ButtonTheme(
                    minWidth: 302,
                    height: 55,
                    child: FlatButton(
                      shape: StadiumBorder(),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {},
                      color: Hexcolor('#54002A'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    ;
  }
}
