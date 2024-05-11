import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'TodoRowWidget.dart';

class TodoListWidget extends StatefulWidget {
  const TodoListWidget({super.key});

  @override
  State<TodoListWidget> createState() => _TodoListState();
}

class _TodoListState extends State<TodoListWidget> {
  List<String> todos = <String>[];
  final TextEditingController _textController = TextEditingController();
  void _addNewTodo() {
    print(_textController.text);
    todos.add(_textController.text);
    _textController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO"),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: 600,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[500],
                      child: Center(child: TodoRowWidget(text: todos[index]))
                  );
                }
              ),
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter todo"
            ),
            controller: _textController,
            onSubmitted: (value) {
              setState(() {
                _addNewTodo();
              });
            },
          )
        ]
      )
    );
  }
}
