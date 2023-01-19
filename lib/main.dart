import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/home/homepage.dart';
import 'package:heartunes_app/screens/splash/splashpage.dart';


void main() {
  runApp(
    HearTunes(),
  );
}

class HearTunes extends StatelessWidget {
  const HearTunes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HearTunes Musical app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
      ),
      home: splashpage(),
    );
  }
}
