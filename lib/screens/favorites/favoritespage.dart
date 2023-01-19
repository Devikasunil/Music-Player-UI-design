import 'package:flutter/material.dart';
import 'package:heartunes_app/screens/favorites/widgets/listview_favorites.dart';

class favoritespage extends StatelessWidget {
  const favoritespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Favorites",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Expanded(
                child: listview_favorites(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
