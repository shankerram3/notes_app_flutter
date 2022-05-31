// ignore_for_file: prefer_const_constructors

import 'package:db_app/page/add_button.dart';
import 'package:flutter/material.dart';

import '../db/notes_database.dart';

class Notespage extends StatefulWidget {
  const Notespage({Key? key}) : super(key: key);

  @override
  State<Notespage> createState() => _NotespageState();
}

class _NotespageState extends State<Notespage> {

  var data = NotesDatabase.instance.readAllNotes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: FutureBuilder(
        builder: (BuildContext cxt, snapshot) => ListGrid((snapshot.data)),
        future: data,
      ),
      floatingActionButton:  AddButton(),
    );
  }
}


class ListGrid extends StatelessWidget {
  const ListGrid(this.data, {Key? key}) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemCount: data?.length,
        itemBuilder: (BuildContext ctx, index) => Text(
              data?[index]?.title ?? "",
              style: TextStyle(color: Colors.white),
            ));
  }
}
