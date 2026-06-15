class Task {
  final int? id;
  final String title;
  final String? description;
  final bool isCompleted;
  final DateTime createdAt;
  Task({
    this.id,
    required this.title,
    this.description,
    this.isCompleted = false,
    required this.createdAt,
  });

  // fromMap (create a factory Constructor -> Create Task from map (from db))
   factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted'] == 1,
      createdAt: DateTime.parse(map['createdAt']),
    );
  }
}
