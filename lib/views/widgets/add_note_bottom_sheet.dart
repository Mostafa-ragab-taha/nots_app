import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hintText: "title",maxLines: 1,),
          CustomTextField(hintText: "content",maxLines: 5,),
        ],
      ),
    );
  }
}
