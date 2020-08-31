
import 'package:class_information_system/shared/customtabindicator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Lecturers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Lecturers();
  }
}

class _Lecturers extends State<Lecturers> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final _tabBar = TabBar(
      indicatorColor: Hexcolor('#E69405'),
      indicator: CustomTabIndicator(),
      controller: _tabController,
      tabs: [
        Tab(
          text: "Course Lecturers",

        ),
        Tab(
          text: "All Lecturers",
        ),
      ],
    );

    return Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              _tabBar,
              Expanded(
                // needed for TabBar View to show correctly
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: Text('Course lecturers', style: TextStyle(color: Colors.white),)),
                    Center(child: Text('All lecturers', style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
