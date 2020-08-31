import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/course1.png"),
                  radius: 28,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                    ),
                    text: "Application Development",
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nSection: 01',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 10,
          dashColor: Hexcolor('#707070'),
          dashRadius: 0.0,
          dashGapLength: 0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/course2.png'),
                  radius: 28,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                    ),
                    text: "Software Quality Assurance",
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nSection: 02',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 10,
          dashColor: Hexcolor('#707070'),
          dashRadius: 0.0,
          dashGapLength: 0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/course3.png'),
                  radius: 28,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                    ),
                    text: "Computational Inteligence",
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nSection: 05',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 10,
          dashColor: Hexcolor('#707070'),
          dashRadius: 0.0,
          dashGapLength: 0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/course4.png'),
                  radius: 28,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                    ),
                    text: "Advance Academic English",
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nSection: 47',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 10,
          dashColor: Hexcolor('#707070'),
          dashRadius: 0.0,
          dashGapLength: 0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Group 215.png'),
                  radius: 28,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                    ),
                    text: 'Theory of Computer Science',
                    children: <TextSpan>[
                      TextSpan(
                        text:
                        '\nSection: 07',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
