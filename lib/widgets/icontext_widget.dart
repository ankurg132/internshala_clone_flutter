import 'package:flutter/material.dart';

class IconTextData extends StatelessWidget {
  const IconTextData({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FittedBox(
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(text, style: const TextStyle(fontSize: 12))
          ],
        ),
      ),
    );
  }
}

class ListTileIconText extends StatelessWidget {
  const ListTileIconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
    );
  }
}
