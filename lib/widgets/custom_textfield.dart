import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final VoidCallback onTap;
  const CustomTextField({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(50, 64, 81, 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.search,
            color: Colors.white38,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: const Text(
              "Search & add",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
          GestureDetector(
            child: const SizedBox(
              width: 120,
            ),
          ),
          const Text(
            "4/50",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          const VerticalDivider(
            width: 30,
            indent: 15,
            endIndent: 15,
            color: Colors.white54,
          ),
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.filter_list_outlined,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
