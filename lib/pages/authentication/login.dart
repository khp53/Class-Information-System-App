
import 'file:///Y:/Apps/class_information_system/lib/pages/screens/dashboard.dart';
import 'package:class_information_system/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ));
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Hexcolor('#1F2025'),
            body: Column(
              children: [
                Expanded(
                  // flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                    child: Image(
                      image: AssetImage('assets/welcome1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        // width: 500,
                        // height: 500,
                        decoration: BoxDecoration(
                          color: Hexcolor('#504BB2'),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                              child: SizedBox(
                                height: 55,
                                child: TextFormField(
                                  controller: emailController,
                                  validator: (val) =>
                                      val.isEmpty ? 'Enter your UTMID' : null,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(30),
                                        ),
                                      ),
                                      filled: true,
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      hintStyle: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                      hintText: "UTM ID",
                                      fillColor: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                              child: SizedBox(
                                height: 55,
                                child: TextFormField(
                                  controller: passwordController,
                                  validator: (val) => val.length < 6
                                      ? 'Password has to be more then 6 characters'
                                      : null,
                                  obscureText: true,
                                  decoration: new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(30),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                      hintText: "Password",
                                      fillColor: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                              child: ButtonTheme(
                                minWidth: 302,
                                height: 50,
                                child: FlatButton(
                                  shape: StadiumBorder(),
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'ProductSans',
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      setState(() {
                                        loading = true;
                                      });
                                      logInToFb();
                                    }
                                  },
                                  color: Hexcolor('#54002A'),
                                ),
                              ),
                            ),
                            Center(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'ProductSans',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Future<void> logInToFb() async {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((result) {
      loading = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DashboardBg(uid: result.user.uid)),
      );
    }).catchError((err) {
      print(err.message);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginBg()),
                    );
                  },
                )
              ],
            );
          });
    });
  }
}
