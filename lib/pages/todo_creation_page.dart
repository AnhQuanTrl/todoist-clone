import 'package:flutter/material.dart';
import 'package:todoist_clone/widgets/recurrence_mode_radio.dart';
import '../models/todo.dart';
import 'package:intl/intl.dart';

class TodoCreationPage extends StatefulWidget {
  static const routeName = "/edit-todo";
  @override
  _TodoCreationPageState createState() => _TodoCreationPageState();
}

class _TodoCreationPageState extends State<TodoCreationPage> {
  var _recurrence = false;
  var _titleController = TextEditingController();
  var _recurrenceMode = RecurrenceMode.EVERY_DAY;
  DateTime _selectedDate;

  void _updateRecurrenceMode(RecurrenceMode value) {
    setState(() {
      _recurrenceMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: _titleController,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: theme.primaryColor),
                    ),
                    textTheme: ButtonTextTheme.primary,
                    child: Row(children: [
                      Icon(Icons.calendar_today),
                      Text('Due Date')
                    ]),
                    onPressed: () async {
                      final today = DateTime.now();
                      final date = await showDatePicker(
                        context: context,
                        initialDate: today,
                        firstDate: today,
                        lastDate: new DateTime(
                            today.year + 2, today.month, today.day),
                      );
                      if (date != null && date != _selectedDate) {
                        setState(() {
                          _selectedDate = date;
                        });
                      }
                    },
                  ),
                  Text(_selectedDate != null
                      ? DateFormat.yMEd().add_Hms().format(_selectedDate)
                      : 'No Date Picked')
                ],
              ),
            ),
            SwitchListTile(
              title: const Text('Recurrence Settings'),
              value: _recurrence,
              onChanged: (value) {
                setState(() {
                  _recurrence = value;
                });
              },
            ),
            if (_recurrence) ...[
              RecurrenceModeRadio('Every Day', RecurrenceMode.EVERY_DAY,
                  _recurrenceMode, _updateRecurrenceMode),
              RecurrenceModeRadio('Every Week', RecurrenceMode.EVERY_WEEK,
                  _recurrenceMode, _updateRecurrenceMode),
              RecurrenceModeRadio('Every Month', RecurrenceMode.EVERY_MONTH,
                  _recurrenceMode, _updateRecurrenceMode),
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }
}
