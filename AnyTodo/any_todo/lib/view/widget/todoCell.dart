import 'package:any_todo/model/todo.dart';
import 'package:flutter/material.dart';

class TodoCell extends StatefulWidget {
  const TodoCell({super.key, required this.todo});

  final Todo todo;

  @override
  State<TodoCell> createState() => _TodoCellState(todo);
}

class _TodoCellState extends State<TodoCell> {
  final Todo todo;
  bool _isChecked = false;

  _TodoCellState(this.todo);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _isChecked,
            onChanged: (value) {
              todo.isDone = value ?? false;
              setState(() {
                _isChecked = value ?? false; //  언래핑 이게 최선?
              });
            }),
        Text(
          todo.title,
          style: TextStyle(
              color: Colors.white,
              decoration: todo.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationColor: Colors.white,
              decorationThickness: 2),
        )
      ],
    );
  }
}
