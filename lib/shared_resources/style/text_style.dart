import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

customTextStyle(BuildContext context, int fontSize, Color? color,
        FontWeight fontWeight, height) =>
    TextStyle(
      fontSize: double.tryParse(fontSize.sp.toString()),
      color:
          color ?? Theme.of(context).colorScheme.primary, // passed but not used
      fontWeight: fontWeight,
    );
