
import 'package:class_information_system/pages/screens/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'courselist.dart';
import 'lecturers.dart';

class DashboardBg extends StatelessWidget {
  DashboardBg({this.uid});
  final String uid;
  final String title = "Class Info System";

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Hexcolor('#1F2025'),
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              title,
              style: TextStyle(
                // fontSize: 17,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Hexcolor('#1F2025'),
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: IconButton(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/khp1.png'),
                    backgroundColor: Hexcolor('#1F2025'),
                    radius: 18,
                  ),
                  onPressed: () {
                    FirebaseAuth auth = FirebaseAuth.instance;
                    auth.signOut().then((res) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreenBg(),
                        ),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          body: Dashboard(),
        )));
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'ProductSans',
    color: Colors.white,
  );

  List<Widget> _widgetOptions = <Widget>[
    CourseList(),
    Lecturers(),
    Text(
      'Class Venue',
      style: optionStyle,
    ),
    Text(
      'Class Schedular',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Text(documentFields['course1']);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#1F2025'),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: const Color(0xff1F2025),
            icon: Icon(
              Icons.dashboard,
              size: 25,
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(fontFamily: 'ProductSans'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 25,
            ),
            title: Text(
              'Lecturers',
              style: TextStyle(fontFamily: 'ProductSans'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 25,
            ),
            title: Text(
              'Venue',
              style: TextStyle(fontFamily: 'ProductSans'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 25,
            ),
            title: Text(
              'Schedular',
              style: TextStyle(fontFamily: 'ProductSans'),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Hexcolor('#E69405'),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
