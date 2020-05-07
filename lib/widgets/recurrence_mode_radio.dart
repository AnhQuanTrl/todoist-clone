import 'package:flutter/material.dart';
import '../models/todo.dart';

class RecurrenceModeRadio extends StatelessWidget {
  final String title;
  final RecurrenceMode recurrenceMode;
  final RecurrenceMode rec;
  final Function update;
  RecurrenceModeRadio(this.title, this.recurrenceMode, this.rec, this.update);

  @override
  Widget build(BuildContext context) {
    return RadioListTile<RecurrenceMode>(
      title: Text(title),
      value: recurrenceMode,
      groupValue: rec,
      onChanged: update,
    );
  }
}
