import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String text,
  VoidCallback? onTap, // Corrected the type for onTap
  Widget? icon, // Added the icon parameter
  Color? bgColor,
  Color? textColor,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 1.5),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            icon,
            const SizedBox(width: 20)
          ], // Corrected the usage of the icon
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    ),
  );
}
