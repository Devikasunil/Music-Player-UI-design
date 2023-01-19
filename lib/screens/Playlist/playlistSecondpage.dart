import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/Playlist/widgets/selectedplaylistview.dart';

class playliststSecondpage extends StatelessWidget {
  const playliststSecondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: selectedListview(),
          ),
        ],
      ),
    );
  }
}
