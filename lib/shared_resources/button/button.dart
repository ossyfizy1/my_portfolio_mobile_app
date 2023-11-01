import 'package:flutter/material.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function()? onClick;
  const CustomButton({super.key, required this.text, this.onClick});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(widget.text,
              style: customTextStyle(
                  context, 16, AppColors.color3, FontWeight.w500, 1.4)),
        ),
      ),
    );
  }
}
