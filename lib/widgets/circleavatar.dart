import 'package:flutter/material.dart';

import '../commons/boxes.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.filter,
            color: Colors.white,
          ),
        ),
        Boxes.smallHeightBox,
        Text(text)
      ],
    );
  }
}
