import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdemy_bloc/bloc/course.bloc.dart';
import 'package:flutterdemy_bloc/models/course.model.dart';

class CourseWidget extends StatelessWidget {
  final CourseModel course;
  const CourseWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(
          course.title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 17, 17, 17),
          ),
        ),
        subtitle: Text(
          course.subtitle!,
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        ),
        trailing: Column(
          children: [
            InkWell(
              child: const Icon(
                Icons.thumb_up_alt_outlined,
                size: 25,
                color: Color.fromARGB(255, 80, 169, 241),
              ),
              onTap: () {
                //?
                context.read<CourseBloc>().add(IncrementLikesEvent(course.id));
              },
            ),
            Text(course.likes.toString(), style: TextStyle(fontSize: 15)),
          ],
        ),
        // trailing: InkWell(
        //   child: const Icon(
        //     Icons.delete,
        //     color: Color.fromARGB(255, 237, 79, 68),
        //   ),
        //   onTap: () {
        //     context.read<CourseBloc>().add(DeleteCourseEvent(course.id));
        //   },
        // ),
      ),
    );
  }
}
