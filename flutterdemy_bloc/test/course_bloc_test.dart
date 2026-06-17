import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemy_bloc/bloc/course.bloc.dart';

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
  });
}
