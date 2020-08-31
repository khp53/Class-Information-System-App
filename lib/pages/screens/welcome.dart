import 'package:class_information_system/pages/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class WelcomeScreenBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Hexcolor('#1F2025'),
        body: WelcomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    ));
  }
}

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
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/welcome1.png"),
                  fit: BoxFit.contain,
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
                padding: const EdgeInsets.fromLTRB(35, 70, 35, 0),
                child: ButtonTheme(
                  height: 50,
                  child: FlatButton(
                    shape: StadiumBorder(),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'ProductSans',
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginBg()),
                      );
                    },
                    color: Hexcolor('#6C63FF'),
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
