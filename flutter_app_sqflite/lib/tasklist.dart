import 'package:flutter/material.dart';
import 'package:flutter_app_sqflite/dbhelper.dart';
import 'package:flutter_app_sqflite/model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final dbHelper = DatabaseHelper.instance;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  List<Task> tasks = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshTaskList();
  }

  void _refreshTaskList() async {
    List<Task> taskslist = await dbHelper.getAllTasks();
    setState(() {
      tasks = taskslist;
    });
  }

  void _addTask() async {
    // insert task in DB
    // update the state
    if (titleController.text.isEmpty) return;
    await dbHelper.insertTask(
      Task(
        title: titleController.text,
        description: descriptionController.text,
        createdAt: DateTime.now(),
      ),
    );
    titleController.clear();
    descriptionController.clear();
    _refreshTaskList();
  }

  void _deleteTask(int id) async {
    await dbHelper.deleteTask(id);
    _refreshTaskList();
  }

  void _toggleTaskStatus(Task task) async {
    Task updatedTask = Task(
      id: task.id,
      title: task.title,
      description: task.description,
      isCompleted: !task.isCompleted,
      createdAt: task.createdAt,
    );
    await dbHelper.updateTask(updatedTask);
    _refreshTaskList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SQLite Task Manager')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Task Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description (Optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(onPressed: _addTask, child: Text('Add Task')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                Task task = tasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  subtitle: task.description != null
                      ? Text(task.description!)
                      : null,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          task.isCompleted
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          semanticLabel: "Toggle task ${task.title}",
                        ),
                        onPressed: () {
                          _toggleTaskStatus(task);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          semanticLabel: "Delete Task ${task.title}",
                        ),
                        onPressed: () {
                          _deleteTask(task.id!);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
