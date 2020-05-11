import 'package:todoist_clone/models/todo.dart';

import './todo_repository.dart';

class FirebaseTodoRepository implements TodoRepository {
  @override
  void addTodo(Todo todo) {
    throw UnimplementedError();
  }

  @override
  List<Todo> fetchAllTodo() {
    throw UnimplementedError();
  }
}