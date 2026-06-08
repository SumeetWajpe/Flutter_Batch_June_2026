import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/models/course.model.dart';

class CoursesListViewBuilderStateful extends StatefulWidget {
  const CoursesListViewBuilderStateful({super.key});

  @override
  State<CoursesListViewBuilderStateful> createState() =>
      _CoursesListViewBuilderStatefulState();
}

class _CoursesListViewBuilderStatefulState
    extends State<CoursesListViewBuilderStateful> {
  final List<CourseModel> listofcourses = [
    CourseModel(
      1,
      "ReactJS",
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: listofcourses.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 15,
          margin: EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: Image(
              image: NetworkImage(listofcourses[index].imageUrl!),
              width: 100,
            ),
            title: Text(
              listofcourses[index].title!,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 17, 17, 17),
              ),
            ),
            subtitle: Text(
              listofcourses[index].subtitle!,
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
                    print('Tap the potential !');
                  },
                ),
                Text(
                  listofcourses[index].likes.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


// trailing: const Icon(
//               Icons.delete,
//               color: Color.fromARGB(255, 237, 79, 68),
//             ),