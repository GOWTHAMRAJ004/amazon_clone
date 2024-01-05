import 'package:flutter/material.dart';

class custom_textfield extends StatefulWidget {
  final TextEditingController controller;
  final String hinText;
  const custom_textfield({super.key, required this.controller, required this.hinText});

  @override
  State<custom_textfield> createState() => _custom_textfieldState();
}

class _custom_textfieldState extends State<custom_textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hinText,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38),
              )),
          validator: (value) {},
        )
      ]),
    );
  }
}
