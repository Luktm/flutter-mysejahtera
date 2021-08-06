import 'package:flutter/material.dart';

class WidgetUtil {
  static Future displayBottomSheet({
    required BuildContext context,
    required List<Widget> widget,
  }) async {
    await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) {
        return ListView(
          children: widget.toList(),
        );
      },
    );
  }
}
