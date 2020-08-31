import 'package:class_information_system/pages/screens/course_list_view.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {

  @override
  Widget build(BuildContext context) {

    return ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          // top: 0,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Container(
                              width: 430,
                              height: 230,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/hero.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          left: 20,
                          right: 20,
                          child: Card(
                            color: Hexcolor('#3B3E43'),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Text(
                                    'Welcome to Class Information System',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'ProductSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'UTM Class Management system offers UTM students a varity of features such as, managing and making real time class schedule, finding class venue with dynamic maps and finding all the lecturers office, phone and email all at one place!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      fontFamily: 'ProductSans',
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/001-school.png',
                                            scale: 8,
                                          ),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Image.asset(
                                            'assets/002-teacher.png',
                                            scale: 8,
                                          ),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Image.asset(
                                            'assets/003-calendar.png',
                                            scale: 8,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Finding class\nvenue with\ndynamic maps',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                            ),
                                          ),
                                          Text(
                                            'Finding all the\nlecturers informations\nat one place!',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                            ),
                                          ),
                                          Text(
                                            'Make & Edit\nreal time\nclass schedule',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Text(
                        'Courses Taken',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Hexcolor('#E69405'),
                          fontFamily: 'ProductSans',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                      child: DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Hexcolor('#707070'),
                        dashRadius: 0.0,
                        dashGapLength: 6.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: Hexcolor('#3B3E43'),
                      elevation: 10,
                      margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: CourseListView()
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}
