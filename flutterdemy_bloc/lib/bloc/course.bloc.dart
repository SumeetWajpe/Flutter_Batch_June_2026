// Course Event

import 'package:flutterdemy_bloc/models/course.model.dart';

abstract class CourseEvent {}

class AddCourseEvent extends CourseEvent {
  final CourseModel course;
  AddCourseEvent(this.course);
}

class DeleteCourseEvent extends CourseEvent {
  final int courseId;
  DeleteCourseEvent(this.courseId);
}

class IncrementLikesEvent extends CourseEvent {
  final int courseId;
  IncrementLikesEvent(this.courseId);
}

// Course State
class CourseState {
  final List<CourseModel> courses;
  CourseState({required this.courses});
}
