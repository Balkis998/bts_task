import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String bText;

  const Button({required this.bText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
          color: Color(0xFF3950D1), borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: Text(
          bText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
