import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemy_bloc/bloc/course.bloc.dart';
import 'package:flutterdemy_bloc/models/course.model.dart';
import 'package:flutterdemy_bloc/widgets/course.widget.dart';

void main() {
  late CourseModel course;

  // Arrange
  setUp(() {
    course = CourseModel(
      1,
      "React",
      "A JS library",
      100,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTw3HApB4bsvabXW3L14cV-LhFo0L71QmEESJN3vW9Ow&s",
      "React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[6][7] that aims to make building user interfaces based on components more seamless. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.[8][9][10] According to the 2025 Stack Overflow Developer Survey, React is one of the most commonly used web technologies.React can be used to develop single-page, mobile, or server-rendered applications with frameworks like Next.js and React Router. Because React is only concerned with the user interface and rendering components to the DOM, React applications often rely on libraries for routing and other client-side functionality.[12][13] A key advantage of React is that it only re-renders those parts of the page that have changed, avoiding unnecessary re-rendering of unchanged DOM elements. React is used by an estimated 6% of all websites.",
      5,
      DateTime.now().subtract(const Duration(days: 20)),
      "English",
      ["English", "German", "Spanish"],
      "Jack Well",
    );
  });

  Widget createWidget() {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CourseBloc(),
        child: Scaffold(body: CourseWidget(course: course)),
      ),
    );
  }

  testWidgets('renders course information', (tester) async {
    // Act
    await tester.pumpWidget(createWidget());
    //Assert
    expect(find.text('Angular'), findsOneWidget);
  });
}
