import 'package:flutter/material.dart';

import '../commons/boxes.dart';
import 'circleavatar.dart';
import 'icontext_widget.dart';

Drawer showDrawer() {
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boxes.largeHeightBox,
              const Text(
                'Ankur Gupta',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const Text('ankurg052@gmail.com'),
              Boxes.mediumHeightBox,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatarWidget(text: 'Preferences'),
                  CircleAvatarWidget(text: 'Resume'),
                  CircleAvatarWidget(text: 'Applications'),
                ],
              ),
              Boxes.mediumHeightBox,
              const Divider(
                thickness: 0.5,
              ),
              Boxes.mediumHeightBox,
              const Text('EXPLORE'),
              const ListTileIconText(icon: Icons.rocket, text: 'Internships'),
              const ListTileIconText(icon: Icons.work, text: 'Jobs'),
              const ListTileIconText(
                  icon: Icons.screen_lock_landscape, text: 'Courses'),
              const ListTileIconText(
                  icon: Icons.work_outline,
                  text: 'Placement Guarantee Courses'),
              const ListTileIconText(
                  icon: Icons.place_outlined, text: 'Study Abroad'),
              Boxes.mediumHeightBox,
              const Text('HELP & SUPPORT'),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text('Help Center'),
              ),
              const ListTile(
                leading: Icon(Icons.chat_bubble_outline),
                title: Text('Report a complaint'),
              ),
              const ListTile(
                leading: Icon(Icons.add),
                title: Text('More'),
              ),
            ]),
      ),
    ),
  );
}
