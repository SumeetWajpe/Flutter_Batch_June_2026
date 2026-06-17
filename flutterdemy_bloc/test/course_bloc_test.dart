import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemy_bloc/bloc/course.bloc.dart';
import 'package:flutterdemy_bloc/models/course.model.dart';

void main() {
  group('Course Bloc Tests suite', () {
    late CourseBloc bloc;
    // setUp

    setUp(() {
      bloc = CourseBloc();
    });
    // tearDown
    tearDown(() {
      bloc.close();
    });

    test('initial State contains 4 courses', () {
      expect(bloc.state.courses.length, 4);
    });

    // blocTest -> build, act , verify
    blocTest<CourseBloc, CourseState>(
      'AddCourse Event adds a new course',
      build: () => CourseBloc(),
      act: (bloc) {
        bloc.add(
          AddCourseEvent(
            CourseModel(
              5,
              "Vue3",
              "A progressive Framework",
              200,
              "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
              "Vue3 is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. ",
              5,
              DateTime.now().subtract(const Duration(days: 10)),
              "English",
              ["English", "German", "Spanish"],
              "Aman Jha",
            ),
          ),
        );
      },
      verify: (bloc) {
        expect(bloc.state.courses.length, 5);
      },
    );
   blocTest(
      'IncrementLikesEvent increments the likes',
      build: () => CourseBloc(),
      act: (bloc) {
        bloc.add(IncrementLikesEvent(1));
      },
      verify: (bloc) {
        final course = bloc.state.courses.firstWhere((c) => c.id == 1);
        expect(course.likes, 101);
      },
    );
  });
}
