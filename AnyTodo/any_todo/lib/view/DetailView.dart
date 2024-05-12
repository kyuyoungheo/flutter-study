import 'package:any_todo/model/todo.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Container(
      padding: const EdgeInsets.fromLTRB(100, 30, 0, 0),
        child:  Text(todo.title, style: const TextStyle(fontSize: 30),)
      )
    );
  }
}
