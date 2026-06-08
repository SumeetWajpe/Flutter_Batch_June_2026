import 'package:flutter/material.dart';

class BasicListViewWidgetCourseList extends StatelessWidget {
  BasicListViewWidgetCourseList({super.key});

  final List<String> listofcourses = ["React", "Angular", "Vue", "Flutter"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...listofcourses.map(
          (String course) => Text(course, style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}


// [...listofcourses.map(
        //   (String course) => Text(course, style: TextStyle(fontSize: 30)),
        // )]

        // =

// [Text("React"),Text("Angular")]