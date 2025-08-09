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
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(hintText: "title",maxLines: 1,),
            SizedBox(height: 16,),
            CustomTextField(hintText: "content",maxLines: 5,),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 18,),
          ],
        ),
      ),
    );
  }
}
