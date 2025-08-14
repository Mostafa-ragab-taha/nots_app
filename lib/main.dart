import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/notes_view.dart';

void main()async 
{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget
{
  const NotesApp();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}