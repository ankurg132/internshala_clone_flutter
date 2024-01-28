import 'package:flutter/material.dart';
import '../commons/boxes.dart';

class FlairText extends StatelessWidget {
  const FlairText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}

class FlairTextWithIcon extends StatelessWidget {
  const FlairTextWithIcon({super.key, required this.icon, required this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(
                icon,
                size: 12,
              ),
              Boxes.mediumWidthBox,
              Text(
                text,
                style: const TextStyle(fontSize: 12),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
