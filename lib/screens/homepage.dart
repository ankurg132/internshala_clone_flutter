import 'package:flutter/material.dart';
import 'package:internshala_clone/providers/internship_provider.dart';
import 'package:provider/provider.dart';

import '../commons/boxes.dart';
import '../widgets/drawer.dart';
import '../widgets/flair_widget.dart';
import '../widgets/icontext_widget.dart';

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
}
