
import 'package:flutter/material.dart';

enum RecurrenceMode {
  EVERY_DAY,
  EVERY_WEEK,
  EVERY_MONTH,
}

class Todo with ChangeNotifier {
  String id;
  String title;
  DateTime dueDate;
  bool isCompleted;

  Todo({@required this.id, @required this.title, this.dueDate, this.isCompleted = false});
  
}