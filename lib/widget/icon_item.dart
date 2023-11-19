import 'package:flutter/material.dart';

class IConItemWidget extends StatelessWidget {
  const IConItemWidget({super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 45,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
