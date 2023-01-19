import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/songs/widgets/listview_songs.dart';

class songspage extends StatelessWidget {
  const songspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Songs",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: listview_songs(),
            ),
          ],
        ),
      ),
    );
  }
}
