/*  floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
import 'package:db_app/page/note_detailed.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const CreateNote())),
      child: const Icon(Icons.add),
    );
  }
}
