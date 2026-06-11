import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/models/course.model.dart';

class AddNewCourse extends StatefulWidget {
  const AddNewCourse({super.key});

  @override
  State<AddNewCourse> createState() => _AddNewCourseState();
}

class _AddNewCourseState extends State<AddNewCourse> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int _id = 0;
  String? _title;

  Widget _buildIdField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Id",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a value";
        } else {
          return null;
        }
      },
      onSaved: (newValue) {
        _id = int.parse(newValue!);
      },
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Title",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.text,
      onSaved: (newValue) {
        _title = newValue;
      },
    );
  }

  _saveCourse() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    final newCourse = CourseModel(
      _id,
      _title,
      "",
      0,
      "",
      "",
      0,
      DateTime.now().subtract(const Duration(days: 20)),
      "",
      [""],
      "",
    );

    print(newCourse.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New Course",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 194, 47, 220),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 16),

              _buildIdField(),
              const SizedBox(height: 16),

              _buildTitleField(),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Save Course"),
                  onPressed: _saveCourse,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
