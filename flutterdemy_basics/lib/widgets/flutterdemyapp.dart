import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/widgets/courses.listviewbuilder.stateful.dart';

class FlutterdemyApp extends StatelessWidget {
  const FlutterdemyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 194, 47, 220),
        title: Text(
          "Flutterdemy",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // body: CourseListWithRowsAndCols(),
      // body: BasicListViewWidgetCourseList(),
      // body: CoursesWithListTile(),
      // body: CourseListUsingListViewBuilder(),
      // body: Counter(),
      body: CoursesListViewBuilderStateful(),
    );
  }
}
