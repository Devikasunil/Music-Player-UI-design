

import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/musicplay/musicplay.dart';


class listview_songs extends StatelessWidget {
  listview_songs({Key? key}) : super(key: key);

  // static const double playerMinHeight = 70;
  // static const double playerMaxHeight = 370;
  // static const miniplayerPercentageDeclaration = 0.2;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => musicplay(),
            ),
          ),
          leading: Container(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Icon(
              Icons.music_note_rounded,
              color: Colors.black,
              size: 40,
            ),
          ),
          tileColor: Colors.grey[800],
          title: Text(
            "Music Name",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            "Artist Name",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Wrap(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.grey[400],
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.grey[400],
                            ),
                            elevation: MaterialStatePropertyAll(
                              0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Add to Playlist",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.queue_music,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.grey[400],
                            ),
                            elevation: MaterialStatePropertyAll(
                              0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Favorite",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(),
      itemCount: 10,
    );
  }
}
