import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSnackBarMesage(BuildContext context, String message,
    [bool isMessage = false]) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: isMessage ? Colors.red : null,
  ));
}
