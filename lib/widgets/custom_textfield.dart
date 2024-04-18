import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData? icon;
  final TextEditingController controller;
  const CustomTextField({
    required this.controller,
    required this.text,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.blueGrey,
          ),
        ),
        suffixIcon: Icon(
          icon,
          size: 32,
          color: const Color.fromARGB(255, 133, 154, 164),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
