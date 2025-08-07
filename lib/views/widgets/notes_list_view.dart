import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget
{
  const NotesListView();
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context,index)
      {
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: NoteItem(),
        );
      }),
    );
  }
}