import 'package:flutter/material.dart';

class ColorButtonWidget extends StatelessWidget {
  ColorButtonWidget({
    Key? key,
    this.onPressed,
    required this.buttonText,
    required this.primaryColor,
    this.icon,
    this.onPrimaryColor,
  }) : super(key: key);

  final String buttonText;
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? primaryColor;
  final Color? onPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        primary: primaryColor,
        // onPrimary default is white color
        onPrimary: onPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          if(icon != null)
            Icon(icon, color: Colors.black),

          SizedBox(width: 10),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
