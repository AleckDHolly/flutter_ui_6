import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomPage extends StatelessWidget {
  BottomPage({super.key});
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
              hintText: "Search by bar or restaurant name: ",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              labelText: "Searching for: "),
        ),
      ),
    );
  }
}
