import 'package:flutter/material.dart';

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
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Title",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.text,
    );
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
          child: Column(
            children: [
              _buildIdField(),
              const SizedBox(height: 16),
              _buildTitleField(),
            ],
          ),
        ),
      ),
    );
  }
}
