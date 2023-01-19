import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/musicplay/widgets/playbuttons.dart';
import 'package:heartunes_app/screens/musicplay/widgets/progressbar.dart';

class musicplay extends StatelessWidget {
  const musicplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.grey,
                    title: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        "Delete?",
                        style: TextStyle(
                          color: Colors.black,
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
                      )
                    ],
                  ),
                );
              },
              icon: Icon(
                Icons.delete_outline,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 80,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(6)),
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Icon(
                  Icons.music_note_rounded,
                  color: Colors.black,
                  size: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Column(
                    children: [
                      Text(
                        "Music Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Artist Name",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Album Name",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  IconButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.grey,
                          title: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text(
                              "Delete?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add to playllist",
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
                                  // SizedBox(
                                  //   width: 90,
                                  // ),
                                  Icon(
                                    Icons.queue_music,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            progressbar(),
            playbuttons(),
          ],
        ),
      ),
    );
  }
}
