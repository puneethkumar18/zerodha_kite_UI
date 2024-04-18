import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final IconData? icon;
  final String text;
  const ProfileTile({
    super.key,
    this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(icon)
          ],
        ),
        const SizedBox(height: 10,),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
