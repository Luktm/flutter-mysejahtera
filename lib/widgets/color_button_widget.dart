import 'package:flutter/material.dart';

class ColorButtonWidget extends StatelessWidget {
  ColorButtonWidget({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.primaryColor,
    this.icon,
    this.onPrimaryColor,
    this.textColor,
  }) : super(key: key);

  final String buttonText;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        primary: primaryColor ?? Colors.black12,
        // onPrimary default is white color
        onPrimary: onPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null)
            Column(
              children: [
                Icon(icon, color: Colors.black),
                SizedBox(width: 10),
              ],
            ),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
