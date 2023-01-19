import 'package:flutter/material.dart';

import 'animated_playbutton.dart';

class playbuttons extends StatefulWidget {
  const playbuttons({Key? key}) : super(key: key);

  @override
  State<playbuttons> createState() => _playbuttonsState();
}

class _playbuttonsState extends State<playbuttons>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iconController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );

    iconController.forward().then((value)async {
      await Future.delayed(Duration(seconds: 3));
      iconController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35,
        top: 10,
      ),
      child: Card(
        margin: EdgeInsets.only(
          top: 50,
        ),
        color: Colors.black,
        elevation: 0,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.loop,
                color: Colors.grey,
                size: 40,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.030,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.fast_rewind_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.010,
            ),
            // IconButton(
            //   onPressed: () {
            //
            //   },
            //   icon: Icon(
            //     Icons.play_circle_outline,
            //     color: Colors.white,
            //     size: 60,
            //   ),
            // ),
            Column(
              children: [
                AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: iconController,
                  color: Colors.white,
                  size: 70,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [

                  ],
                ),
              ],
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.060,
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.fast_forward_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.010,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shuffle_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
