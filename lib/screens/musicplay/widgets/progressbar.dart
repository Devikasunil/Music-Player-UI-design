import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class progressbar extends StatelessWidget {
  const progressbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ProgressBar(
        progress: Duration(minutes: 2),
        buffered: Duration(minutes: 1),
        total: Duration(minutes: 5),
        progressBarColor: Colors.white,
        baseBarColor: Colors.white.withOpacity(0.24),
        bufferedBarColor: Colors.white.withOpacity(0.24),
        thumbColor: Colors.white,
        barHeight: 3.0,
        thumbRadius: 5.0,
        onSeek: (duration) {
          print('object');
        },

      ),
    );
  }
}
