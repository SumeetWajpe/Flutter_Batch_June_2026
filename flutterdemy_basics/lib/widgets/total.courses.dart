import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/models/courselist.changenotifier.model.dart';
import 'package:provider/provider.dart';

class TotalCourses extends StatelessWidget {
  const TotalCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CourseListNotifier>(
      builder: (_, courseListChangeNotifierInstance, __) => Container(
        margin: EdgeInsets.all(20),
        child: Text(
          "Total Courses : ${courseListChangeNotifierInstance.listofcourses.length}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
