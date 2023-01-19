import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/Playlist/widgets/listview_playlist.dart';

class playlistpage extends StatelessWidget {
  playlistpage({Key? key}) : super(key: key);

  TextEditingController addPlaylistTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Playlists",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.black54,
                      title: Container(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          controller: addPlaylistTextEditingController,
                          decoration: InputDecoration(
                            hintText: "Add Playlist",
                            hintStyle: TextStyle(color: Colors.grey),
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
                          ),
                        ),
                      ),
                      actions: [

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Colors.white60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Colors.white60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: listview_playlist(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
