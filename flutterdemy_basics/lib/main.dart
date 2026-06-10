import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/models/course.model.dart';
import 'package:flutterdemy_basics/models/courselist.changenotifier.model.dart';
import 'package:flutterdemy_basics/screens/course.details.dart';
// import 'package:flutterdemy_basics/widgets/CourseListUsingRowsAndCol.dart';
// import 'package:flutterdemy_basics/widgets/basic_listview_courselist.dart';
// import 'package:flutterdemy_basics/widgets/basicstatefulwidget.dart';
// import 'package:flutterdemy_basics/widgets/courses.listviewbuilder.stateful.dart';
// import 'package:flutterdemy_basics/widgets/courseswithlistviewbuilder.dart';
// import 'package:flutterdemy_basics/widgets/flutterdemyapp.dart';
// import 'package:flutterdemy_basics/widgets/listview_listtile_courselist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CourseListNotifier(),
      child: MaterialApp(title: 'Flutter Demy', home: CourseDetails(
          CourseModel(
            1,
            "React",
            "A JS library",
            100,
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
            "React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[6][7] that aims to make building user interfaces based on components more seamless. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.[8][9][10] According to the 2025 Stack Overflow Developer Survey, React is one of the most commonly used web technologies.React can be used to develop single-page, mobile, or server-rendered applications with frameworks like Next.js and React Router. Because React is only concerned with the user interface and rendering components to the DOM, React applications often rely on libraries for routing and other client-side functionality.[12][13] A key advantage of React is that it only re-renders those parts of the page that have changed, avoiding unnecessary re-rendering of unchanged DOM elements. React is used by an estimated 6% of all websites.",
            5,
            DateTime.now().subtract(const Duration(days: 20)),
            "English",
            ["English", "German", "Spanish"],
            "Jack Well",
          ),
        )),
    ),
  );
}
