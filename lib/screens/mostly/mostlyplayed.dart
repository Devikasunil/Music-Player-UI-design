import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/mostly/widgets/listview_mostlyplayed.dart';

class mostlyplayed extends StatelessWidget {
  const mostlyplayed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mostly",
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
              child: listview_mostlyplayed(),
            ),
          ],
        ),
      ),
    );
  }
}
