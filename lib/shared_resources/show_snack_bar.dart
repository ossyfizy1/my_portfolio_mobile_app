import 'package:flutter/material.dart';

utilShowSnackBarMessage(String? message, context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message!),
    duration: const Duration(seconds: 2),
    // action: SnackBarAction(
    //   label: 'ACTION',
    //   onPressed: () {},
    // ),
  ));
}
