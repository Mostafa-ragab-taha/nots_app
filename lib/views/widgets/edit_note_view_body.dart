import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';



class EditNoteViewBody extends StatelessWidget
{
  const EditNoteViewBody();
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppBar(title: "Edit Note",icon: Icons.check,),
          SizedBox(height: 20,),
          CustomTextField(hintText: "Title",),
          SizedBox(height: 16,),
          CustomTextField(hintText:"Content",maxLines : 5,),
        ],
      ),
    );
  }
}