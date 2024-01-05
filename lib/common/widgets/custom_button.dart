import 'package:flutter/material.dart';

class custom_button extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const custom_button({
    super.key, required this.onTap,required this.text
  });

  @override
  State<custom_button> createState() => _custom_buttonState();
}

class _custom_buttonState extends State<custom_button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:widget.onTap,
        child: Text(widget.text),
        style:
            ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)));
  }
}
