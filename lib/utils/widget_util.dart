import 'package:flutter/material.dart';

class WidgetFnUtil {
  static Future displayBottomSheet({
    required BuildContext context,
    required List<Widget> children,
  }) async {
    await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) {
        return ListView(
          children: children.toList(),
        );
      },
    );
  }
}
