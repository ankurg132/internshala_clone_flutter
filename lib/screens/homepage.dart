import 'package:flutter/material.dart';
import 'package:internshala_clone/models/get_internship.dart';
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
        forceMaterialTransparency: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text('Internships'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: provider.isLoading
          ? CircularProgressIndicator()
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Boxes.mediumHeightBox,
                  FittedBox(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.blue),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.filter_alt, color: Colors.blue),
                            Boxes.mediumWidthBox,
                            Text(
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
                  Divider(
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
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2, horizontal: 8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.auto_graph_rounded,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Actively Hiring')
                                                ],
                                              ),
                                            ))
                                          : Container(),
                                      SizedBox(
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
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  item.companyName ?? '',
                                                  style: TextStyle(
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
                                          ? IconTextData(
                                              icon: Icons.home,
                                              text: 'Work from Home')
                                          : IconTextData(
                                              icon: Icons.work,
                                              text: item.locations?[0]
                                                      .locationName ??
                                                  ''),
                                      Wrap(
                                        children: [
                                          IconTextData(
                                              icon: Icons.play_arrow,
                                              text: item.startDate ?? ''),
                                          Boxes.largeWidthBox,
                                          IconTextData(
                                              icon: Icons.calendar_month,
                                              text: item.duration ?? ''),
                                        ],
                                      ),
                                      Wrap(children: [
                                        FlairText(
                                            text:
                                                "Internship ${item.ppoLabelValue}"),
                                        if (item.partTime ?? false)
                                          FlairText(text: "Part Time"),
                                      ]),
                                      FlairTextWithIcon(
                                          icon: Icons.replay_outlined,
                                          text: item.postedOn ?? ''),
                                      Divider(),
                                      Row(
                                        children: [
                                          Spacer(),
                                          Text(
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
                                            child: Text(
                                              'Apply Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
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
}

class FlairText extends StatelessWidget {
  const FlairText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 12),
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
      padding: EdgeInsets.symmetric(
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
                style: TextStyle(fontSize: 12),
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
            SizedBox(
              width: 5,
            ),
            Text(text, style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    );
  }
}
