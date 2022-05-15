import 'package:flutter/material.dart';

import 'package:catalogapp/size_config.dart';

class RoundedTextField extends StatefulWidget {
  const RoundedTextField({
    Key key,
    this.initialValue,
    this.hintText,
  }) : super(key: key);

  final String initialValue, hintText;

  @override
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    String isName = "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hintText,
          style: TextStyle(color: Colors.white60),
        ),
        VerticalSpacing(of: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: TextField(
            onChanged: (context) {
              isName = context;
            },
            
            style: TextStyle(color: Colors.white),
            controller: TextEditingController(text: widget.initialValue),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
