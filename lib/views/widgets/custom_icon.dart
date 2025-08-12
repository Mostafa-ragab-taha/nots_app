import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({required this.icon}
  );
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
        child: Icon(
          icon,
          
          size: 28,
        ),
      ),
    );
  }
}
