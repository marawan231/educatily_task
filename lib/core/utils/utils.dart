import 'package:educatly_task/core/navigator/navigator.dart';
import 'package:flutter/material.dart';

class Utils {
  static void showErrorSnackBar({required String message}) {
    ScaffoldMessenger.of(Go.navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
