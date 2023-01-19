import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/home/homepage.dart';


class HearTunesBottomNavigation extends StatelessWidget {
  const HearTunesBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: homepage.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          items: [

            BottomNavigationBarItem(

              icon: Icon(
                Icons.library_music,
                color: Colors.white,
              ),
              label: 'Songs',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.queue_music,
                color: Colors.white,
              ),
              label: 'Playlists',
            ),
          ],
          currentIndex: updatedIndex,
          showSelectedLabels: false,
          onTap: (newIndex) {
            homepage.selectedIndexNotifier.value = newIndex;
          },
          backgroundColor: Colors.grey[900],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
         
          // selectedIconTheme: IconThemeData.fallback(),
        );
      },
    );
  }
}
