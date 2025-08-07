import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget
{
  const NotesListView();
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(itemBuilder: (context,index)
    {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: NoteItem(),
      );
    });
  }
}