import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/models/courselist.changenotifier.model.dart';
// import 'package:flutterdemy_basics/widgets/CourseListUsingRowsAndCol.dart';
// import 'package:flutterdemy_basics/widgets/basic_listview_courselist.dart';
// import 'package:flutterdemy_basics/widgets/basicstatefulwidget.dart';
// import 'package:flutterdemy_basics/widgets/courses.listviewbuilder.stateful.dart';
// import 'package:flutterdemy_basics/widgets/courseswithlistviewbuilder.dart';
import 'package:flutterdemy_basics/widgets/flutterdemyapp.dart';
// import 'package:flutterdemy_basics/widgets/listview_listtile_courselist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CourseListNotifier(),
      child: MaterialApp(title: 'Flutter Demy', home: FlutterdemyApp()),
    ),
  );
}
