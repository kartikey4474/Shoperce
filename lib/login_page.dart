import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
              fontSize: 40,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
