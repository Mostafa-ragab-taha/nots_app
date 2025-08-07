import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24 ,top: 24 , bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0XFFFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:const Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Build Your Carer withe \ntharwat samy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.5),
                    
                ),
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May 21,2022",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.5),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}