import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/TodoListWidget.dart';

class TabViewWidget extends StatefulWidget {
  const TabViewWidget({super.key});

  @override
  _TabViewWidgetState createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> {
  final List<Widget> _tabPages = <Widget>[
    TodoListWidget(),
    const Text('done'),
    const Text('favorite'),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TODO"),
          actions: [
            IconButton(
              onPressed: () { },
              icon: const Icon(Icons.add)
            )
          ],
        ),
        body: Center(
          child: _tabPages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Todo'),
            BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite')
          ],
          onTap: _onItemTapped,
      )
    );
  }
}