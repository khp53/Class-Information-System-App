import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Hexcolor('#1F2025'),
      child: Center(
        child: SpinKitChasingDots(
          color: Hexcolor('#E69405'),
          size: 70,
        ),
      ),
    );
  }
}
