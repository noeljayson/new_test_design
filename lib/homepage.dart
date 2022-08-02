import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_test/ui/shared/ui_helpers.dart';
import 'package:new_test/ui/theme/palette.dart';
import 'package:badges/badges.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final List<String> images = <String>[
    'assets/person.jpeg',
    'assets/person.jpeg',
  ];

  final List<String> names = <String>[
    'Bob',
    'Charlie',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade600,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {}),
      /// bottom navigation
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/home.png',
                    height: 22,
                    width: 22,
                    color: Colors.green.shade600,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Image.asset(
                  'assets/videoplay.png',
                  height: 22,
                  width: 22,
                  color: Colors.black,
                  filterQuality: FilterQuality.high,
                ),
                const SizedBox(width: 20),
                Image.asset(
                  'assets/search.png',
                  height: 22,
                  width: 22,
                  color: Colors.black,
                  filterQuality: FilterQuality.high,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 13.0,
                    backgroundImage: AssetImage("assets/person.jpeg"),
                  ),
                )
              ],
            ),
          )),
      /// app bar
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        elevation: .5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/nav.png",
              height: 20,
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/search.png',
                  color: Colors.green,
                  height: 20,
                  width: 20,
                ),
                horizontalSpaceMedium,
                CircleAvatar(
                  backgroundColor: Colors.green.shade600,
                  radius: 18.0,
                  child: Stack(
                    children: [
                      Badge(
                        badgeColor: Colors.yellow.shade600,
                        badgeContent: const Text('2',
                            style: TextStyle(color: Colors.white)),
                        child: const Icon(
                          Icons.message,
                          size: 23.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            verticalSpaceTiny,
            /// Circle avathar pics
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.green.shade600,
                                  radius: 12.0,
                                  child: const Icon(
                                    Icons.add,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              radius: 38.0,
                              backgroundImage:
                                  const AssetImage("assets/person.jpeg"),
                            ),
                          ),
                        ]),
                        const Text(
                          "Dent washington",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    horizontalSpaceSmall,
                    Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.green.shade600,
                            child: const CircleAvatar(
                              radius: 38.0,
                              backgroundImage: AssetImage('assets/person.jpeg'),
                            ),
                          ),
                        ]),
                        const Text(
                          "Rani Wyatt",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    horizontalSpaceSmall,
                    Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.green.shade600,
                            child: const CircleAvatar(
                              radius: 38.0,
                              backgroundImage: AssetImage('assets/person.jpeg'),
                            ),
                          ),
                        ]),
                        const Text(
                          "Dent washington",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    horizontalSpaceSmall,
                    Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.green.shade600,
                            child: const CircleAvatar(
                              radius: 38.0,
                              backgroundImage: AssetImage('assets/person.jpeg'),
                            ),
                          ),
                        ]),
                        const Text(
                          "Dani Wyatt",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            /// List view items
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16.0,
                            backgroundImage: AssetImage(images[index]),
                            backgroundColor: Colors.transparent,
                          ),
                          horizontalSpaceSmall,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const Text(
                                "Washington",
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/pic.png",
                      fit: BoxFit.cover,
                       width: MediaQuery.of(context).size.width,

                    ),
                    verticalSpaceTiny,
                    Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Row(
                            children: [
                              horizontalSpaceSmall,
                              const Icon(Icons.favorite_border_outlined),
                              horizontalSpaceSmall,
                              Image.asset(
                                'assets/chat.png',
                                width: 22,
                                height: 22,
                                color: Colors.black,
                              ),
                              horizontalSpaceSmall,
                              Image.asset(
                                'assets/send.png',
                                height: 22,
                                width: 22,
                                color: Colors.black,
                              ),
                              horizontalSpaceSmall,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
