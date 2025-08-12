import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget
{
  final void Function()? onTap;

  const CustomButton({super.key,required this.onTap});
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),)),
      ),
    );
  }
}
