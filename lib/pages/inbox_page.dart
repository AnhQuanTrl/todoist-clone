import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Inbox'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {},),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
        ],
      ),
    );
  }
}
