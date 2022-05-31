import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  TextEditingController taskDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text('Save', style: TextStyle(fontSize: 18)),
              style: ButtonStyle()),
        ],
        title: const Text(
          'Add Notes',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: taskDescription,
          decoration: const InputDecoration(
            border:InputBorder.none,
          ),
          maxLines: 200,
          style: TextStyle(color: Colors.white),
          onChanged: (value){
            debugPrint('something changed');
          },
        ),
      ),
    );
  }
}
