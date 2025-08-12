import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget
{
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title , subTitle;
  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                onSaved: (value)
                {
                  title = value;
                },
                hintText: "title",
                maxLines: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value)
                {
                  subTitle = value;
                },
                hintText: "content",
                maxLines: 5,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                onTap: ()
                {
                  if(formKey.currentState!.validate())
                  {
                    formKey.currentState!.save();
                  }else{
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
    );
  }
}
