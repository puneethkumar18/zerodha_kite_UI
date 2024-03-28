import 'package:flutter/material.dart';

class ShowDialouge extends StatefulWidget {
  const ShowDialouge({super.key});

  @override
  State<ShowDialouge> createState() => _ShowDialougeState();
}

class _ShowDialougeState extends State<ShowDialouge> {
  @override
  Widget build(BuildContext context) {
    return const Dialog.fullscreen(
      backgroundColor: Colors.amberAccent,
      child: AboutDialog(
        applicationIcon: Icon(Icons.abc),
      ),
    );
  }
}