import 'package:flutter/material.dart';

import 'widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          showModalBottomSheet(context: context, builder: (context)
          {
            return ShowModalBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.blue,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}

