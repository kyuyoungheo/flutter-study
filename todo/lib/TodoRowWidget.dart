import 'package:flutter/material.dart';

class TodoRowWidget extends StatelessWidget {
  const TodoRowWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Row(
          children: [
            Text(text),
            const Spacer(),
            OutlinedButton(
                onPressed: () {
                  print("Done");
                },
                child: const Text("Done")
            )
          ],
        ),
        onTap: () {
          _dialogBuilder(context, text);
        });
  }

  Future<void> _dialogBuilder(BuildContext context, String text) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(text),
          content: const Text('Description'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
