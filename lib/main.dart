import 'package:flutter/material.dart';
import 'package:nots_app/views/notes_view.dart';

void main()
{
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget
{
  const NotesApp();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}