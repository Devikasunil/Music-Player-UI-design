import 'package:flutter/material.dart';

import '../../musicplay/musicplay.dart';

class listview_favorites extends StatelessWidget {
  const listview_favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          Card(
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
              tileColor: Colors.grey[800],
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
                    onPressed: () {

                    },
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
                        builder: (context) =>
                            AlertDialog(
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
                                        "Delete",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.delete,
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
                                        "Remove",
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
