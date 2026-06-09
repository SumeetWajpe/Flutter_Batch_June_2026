import 'package:flutter/widgets.dart';
import 'package:flutterdemy_basics/models/course.model.dart';

class CourseListNotifier extends ChangeNotifier {
  final List<CourseModel> listofcourses = [
    CourseModel(
      1,
      "React",
      "A JS library",
      100,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      2,
      "Node",
      "A Server FX",
      200,
      "https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png",
    ),
    CourseModel(
      3,
      "Angular",
      "A JS FX",
      500,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Angular_gradient_logo.png/960px-Angular_gradient_logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      4,
      "Flutter",
      "A Cross Platform solution",
      200,
      "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    ),
    CourseModel(
      5,
      "MongoDB",
      "A document based DB",
      200,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ZYtHv2OLXmthRPbkmENZRXuqBVDwlsrZ1A&s",
    ),
  ];

  void deleteACourse(int theIndex) {
    // set the app state
    print("Deleting the course (Index) : $theIndex ");
    listofcourses.removeAt(theIndex);
    notifyListeners(); // notify listeners about change in state (data)
  }
}
