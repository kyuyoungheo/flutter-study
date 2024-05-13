import 'dart:ui';
import 'package:any_todo/model/todo.dart';
import 'package:any_todo/view/widget/todoCell.dart';
import 'package:flutter/material.dart';
import 'DetailView.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Todo> todos = [Todo('머리감기', false), Todo('놀러가기', false)];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'ALL TASKS',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text('메뉴', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('오늘',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      )
                  ),
                   Spacer(),
                   Text('+', style: TextStyle(color: Colors.white))
                ])),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: width,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(context: context, builder: (BuildContext context) => DetailView(todo: todos[index]));
                  },
                  child: TodoCell(todo: todos[index],
                    onDeleted: () {
                    deleteTodo(index);
                  },),
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            controller: _textController,
            onSubmitted: addTodo,
            decoration: const InputDecoration(
                labelText: '텍스트 입력',
                border: OutlineInputBorder()),
          ),
        )
      ]),
    );
  }

  void addTodo(String text) {
    _textController.clear();
    todos.add(Todo(text, false));
    setState(() {});
  }

  void deleteTodo(int index) {
    print('ggg');
    todos.removeAt(index);
    setState(() {});
    print(todos);
  }
}
