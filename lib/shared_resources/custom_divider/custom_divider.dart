import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double width;
  final Color color;
  const CustomDivider({super.key, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Divider(
        color: color,
        height: 1,
      ),
    );
  }
}
