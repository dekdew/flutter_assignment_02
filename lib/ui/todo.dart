import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TodoState();
  }
}

class TodoState extends State {
  int _index = 0;

  final List<Widget> _body = [Text('Todo'), Text('Completed')];

  @override
  Widget build(BuildContext context) {
    final List topbar = <Widget>[
      IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
      IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {},
      )
    ];

    return new Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
        actions: <Widget>[topbar[_index]],
      ),
      body: Center(child: _body[_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Task')),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all), title: Text("Completed"))
        ],
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
