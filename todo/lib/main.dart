import 'package:flutter/material.dart';
import 'package:todo/TabViewWidget.dart';

import 'TodoListWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: TabViewWidget(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List todos = [];
//   final List<int> colorCodes = <int>[600, 500, 100];
//
//   void _addNewTodo(String todo) {
//     print("Hello world");
//     setState(() {
//       todos.add(todo);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("TODO"),
//         actions: [
//           IconButton(
//             onPressed: () {
//           _addNewTodo("Hello");
//         },
//             icon: const Icon(Icons.add))
//         ],
//       ),
//       body: ListView.builder(
//           itemCount: todos.length,
//           itemBuilder: (BuildContext context, int index) {
//             Container(
//                 height: 50,
//                 color: Colors.amber[colorCodes[index]],
//                 child: Center(child: Text('TODO: ${todos[index]}')));
//           }),
//     );
//   }
// }
