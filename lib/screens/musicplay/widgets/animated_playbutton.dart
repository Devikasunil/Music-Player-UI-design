import 'package:flutter/material.dart';

class animatedPlaybutton extends StatefulWidget {
  const animatedPlaybutton({Key? key}) : super(key: key);

  @override
  State<animatedPlaybutton> createState() => _animatedPlaybuttonState();
}

class _animatedPlaybuttonState extends State<animatedPlaybutton>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iconController =
        AnimationController(vsync: this, duration: Duration(seconds: 1,),);

    iconController.forward();
    iconController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedIcon(
      icon: AnimatedIcons.play_pause,
      progress:iconController,
    );
  }
}
