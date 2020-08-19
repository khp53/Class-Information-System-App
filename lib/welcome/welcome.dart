import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:class_information_system/login/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 38, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
                child: ButtonTheme(
                  height: 50,
                  child: FlatButton(
                    shape: StadiumBorder(),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginBg()),
                      );
                    },
                    color: Hexcolor('#54002A'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
