import '../models/todo.dart';

abstract class TodoRepository {
  void addTodo(Todo todo);
  List<Todo> fetchAllTodo();
}