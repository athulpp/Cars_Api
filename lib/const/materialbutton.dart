import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.red,
            minimumSize: Size(50, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}