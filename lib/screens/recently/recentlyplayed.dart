import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/recently/widgets/listview_recently.dart';

class recentlyplayed extends StatelessWidget {
  const recentlyplayed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Recently",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: listview_recently(),
            ),
          ],
        ),
      ),
    );
  }
}
