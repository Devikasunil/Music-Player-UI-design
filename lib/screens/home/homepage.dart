import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/Playlist/playlistpage.dart';
import 'package:heartunes_app/screens/about/aboutpage.dart';
import 'package:heartunes_app/screens/favorites/favoritespage.dart';
import 'package:flutter/services.dart';
import 'package:heartunes_app/screens/mostly/mostlyplayed.dart';
import 'package:heartunes_app/screens/songs/songspage.dart';

import '../recently/recentlyplayed.dart';
import 'widgets/bottom_navbar.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);
  TextEditingController SearchTextEditingController = TextEditingController();

  clearIcon() {
    return Icon(
      Icons.clear,
      color: Colors.white,
    );
  }

  searchIcon() {
    return Icon(
      Icons.search,
      color: Colors.white,
    );
  }

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final List screens = [
    songspage(),
    favoritespage(),
    playlistpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HearTunesBottomNavigation(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Container(
          height: 40,
          decoration: BoxDecoration(color: Colors.grey[600]),
          margin: new EdgeInsets.only(bottom: 4),
          child: TextFormField(
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            controller: SearchTextEditingController,
            decoration: InputDecoration(
              hintText: "Search the music...",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              filled: true,
              prefixIcon: IconButton(
                  onPressed: () {
                    clearSearch();
                  },
                  icon: clearIcon()),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: searchIcon(),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        elevation: 5,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    elevation: MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Share App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 78,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    elevation: MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => aboutpage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'About',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    elevation: MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => recentlyplayed(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Recently',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Icon(
                        Icons.music_video_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    elevation: MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => mostlyplayed(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Mostly',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 116,
                      ),
                      Icon(
                        Icons.auto_graph_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    elevation: MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Exit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(
                    top: 170,
                  ),
                  color: Colors.grey[900],
                  elevation: 0,
                  child: Column(
                    children: [
                      Text(
                        'Version',
                        style: TextStyle(
                          color: Colors.white12,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '1.0',
                        style: TextStyle(
                          color: Colors.white12,
                          fontSize: 20,
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
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (Context, int updatedIndex, _) {
            return screens[updatedIndex];
          },
        ),
      ),
    );
  }

  clearSearch() {
    SearchTextEditingController.clear();
  }
}
