import 'package:flutter/material.dart';
import 'package:internshala_clone/providers/internship_provider.dart';
import 'package:provider/provider.dart';

import '../commons/boxes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<InternshipProvider>(context);
    if (provider.isLoading == true) {
      provider.getApi();
    }
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text('Internships'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      drawer: showDrawer(),
      body: provider.isLoading
          ? Center(child: const CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Boxes.mediumHeightBox,
                  FittedBox(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 1.0, color: Colors.blue),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.filter_alt, color: Colors.blue),
                            Boxes.mediumWidthBox,
                            const Text(
                              'Filter',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                  ),
                  Text(
                    '${provider.internshipData.length} total internships',
                    style: const TextStyle(color: Colors.black87),
                  ),
                  Boxes.mediumHeightBox,
                  const Divider(
                    height: 0,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: provider.internshipData.length,
                          itemBuilder: (context, index) {
                            var item = provider.internshipData[index];
                            return Card(
                                elevation: 0,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      item.isActive ?? false
                                          ? FittedBox(
                                              child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 2,
                                                      horizontal: 8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Row(
                                                children: [
                                                  Icon(
                                                    Icons.auto_graph_rounded,
                                                    color: Colors.blue,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Actively Hiring')
                                                ],
                                              ),
                                            ))
                                          : Container(),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  item.title ?? '',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  item.companyName ?? '',
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Image.network(
                                            'https://th.bing.com/th/id/R.c8bf7c087ca9793d094042845707ffac?rik=fjZN1AYH30vXIw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fgoogle%2fgoogle_PNG19635.png&ehk=ZmsumEtoeJQhKoUzQTZO2TEbYPBu0%2b7EFdjmJ3qljls%3d&risl=&pid=ImgRaw&r=0',
                                            height: 50,
                                            width: 50,
                                          )
                                        ],
                                      ),
                                      item.workFromHome ?? false
                                          ? const IconTextData(
                                              icon: Icons.home_outlined,
                                              text: 'Work from Home')
                                          : IconTextData(
                                              icon: Icons.work_outline_outlined,
                                              text: item.locations?[0]
                                                      .locationName ??
                                                  ''),
                                      Wrap(
                                        children: [
                                          IconTextData(
                                              icon: Icons.play_arrow_outlined,
                                              text: item.startDate ?? ''),
                                          Boxes.largeWidthBox,
                                          IconTextData(
                                              icon:
                                                  Icons.calendar_month_outlined,
                                              text: item.duration ?? ''),
                                        ],
                                      ),
                                      Wrap(children: [
                                        FlairText(
                                            text:
                                                "Internship ${item.ppoLabelValue}"),
                                        if (item.partTime ?? false)
                                          const FlairText(text: "Part Time"),
                                      ]),
                                      FlairTextWithIcon(
                                          icon: Icons.replay_outlined,
                                          text: item.postedOn ?? ''),
                                      const Divider(
                                        thickness: 0.5,
                                      ),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          const Text(
                                            'View Details',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Boxes.largeWidthBox,
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8))),
                                            child: const Text(
                                              'Apply Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ));
                          })),
                ],
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

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
