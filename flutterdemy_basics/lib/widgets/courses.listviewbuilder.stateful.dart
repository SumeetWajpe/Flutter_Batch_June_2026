import 'package:flutter/material.dart';
// import 'package:flutterdemy_basics/models/course.model.dart';
import 'package:flutterdemy_basics/models/courselist.changenotifier.model.dart';
import 'package:provider/provider.dart';

class CoursesListViewBuilderStateful extends StatefulWidget {
  const CoursesListViewBuilderStateful({super.key});

  @override
  State<CoursesListViewBuilderStateful> createState() =>
      _CoursesListViewBuilderStatefulState();
}

class _CoursesListViewBuilderStatefulState
    extends State<CoursesListViewBuilderStateful> {
  // void deleteACourse(CourseModel course) {
  //   setState(() {
  //     courselistChangeNotifierInstance.listofcourses.removeWhere((theCourse) => course.id == theCourse.id);
  //   });
  // }

  // void deleteACourse(int index) {
  //   setState(() {
  //     listofcourses.removeAt(index);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<CourseListNotifier>(
      builder: (_, courselistChangeNotifierInstance, __) => ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: courselistChangeNotifierInstance.listofcourses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragEnd: (_) {
              // deleteACourse(index);
            },
            child: Card(
              elevation: 15,
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Image(
                  image: NetworkImage(
                    courselistChangeNotifierInstance
                        .listofcourses[index]
                        .imageUrl!,
                  ),
                  width: 100,
                ),
                title: Text(
                  courselistChangeNotifierInstance.listofcourses[index].title!,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 17, 17, 17),
                  ),
                ),
                subtitle: Text(
                  courselistChangeNotifierInstance
                      .listofcourses[index]
                      .subtitle!,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
                trailing: InkWell(
                  child: const Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 237, 79, 68),
                  ),
                  onTap: () {
                    // ??
                    // deleteACourse(courselistChangeNotifierInstance.listofcourses[index]);
                    // deleteACourse(index);
                  },
                ),

                // trailing: Column(
                //   children: [
                //     InkWell(
                //       child: const Icon(
                //         Icons.thumb_up_alt_outlined,
                //         size: 25,
                //         color: Color.fromARGB(255, 80, 169, 241),
                //       ),
                //       onTap: () {
                //         setState(() {
                //           courselistChangeNotifierInstance.listofcourses[index].likes += 1;
                //         });
                //       },
                //     ),
                //     Text(
                //       courselistChangeNotifierInstance.listofcourses[index].likes.toString(),
                //       style: TextStyle(fontSize: 15),
                //     ),
                //   ],
                // ),
              ),
            ),
          );
        },
      ),
    );
  }
}


// trailing: const Icon(
//               Icons.delete,
//               color: Color.fromARGB(255, 237, 79, 68),
//             ),