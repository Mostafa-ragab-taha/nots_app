import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_state.dart';

import 'add_note_form.dart';


class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit,AddNoteState>(
          listener: (context,State)
          {
            if(State is AddNoteFaliure)
            {
              print("failed");
            }
            if(State is AddNoteSuccess)
            {
              Navigator.pop(context);
            }
          },
          builder: (context,State)
          {
            return  ModalProgressHUD(
              inAsyncCall: State is AddNoteLoading ? true : false,
              child:  AddNoteForm(),);
          }, 
          ),
      ),
    );
  }
}

